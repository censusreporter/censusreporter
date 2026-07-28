"""Regression test for the requests/requests-cache incompatibility that took down
production on 2026-07-28 (censusreporter#339).

Bumping `requests` (a security patch) broke requests-cache==1.2.0's response
serialization: its cattrs-based serializer resolves a forward-referenced
RequestsCookieJar type hint against the newer requests internals and fails with
`NameError: name 'RequestsCookieJar' is not defined` on every cache write. This
happens purely in the requests/requests-cache/cattrs stack - the Redis server
version is not the variable under test here (unlike the census-api HELLO bug),
but a real Redis backend is used anyway to exercise the same code path as
`r_session` in views.py, not a mock.

Requires Docker to be available; fails (not skips) if it isn't.
"""
import shutil
import socket
import subprocess
import time
import tomllib
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from threading import Thread

import redis
import requests_cache
from django.test import SimpleTestCase

REDIS_IMAGE = 'redis:5.0.7'


def _free_port():
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind(('127.0.0.1', 0))
        return s.getsockname()[1]


class _OkHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-Type', 'application/json')
        self.end_headers()
        self.wfile.write(b'{"status": "ok"}')

    def log_message(self, *args):
        pass


class CacheCompatTest(SimpleTestCase):
    databases = []

    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        if shutil.which('docker') is None:
            raise RuntimeError(
                'docker is required to run this test (it exercises the real '
                'requests-cache Redis backend, which a mock cannot reproduce)'
            )

        redis_port = _free_port()
        cls.redis_container_id = subprocess.run(
            ['docker', 'run', '-d', '--rm', '-p', f'{redis_port}:6379', REDIS_IMAGE],
            capture_output=True, text=True, check=True,
        ).stdout.strip()

        client = redis.StrictRedis(host='127.0.0.1', port=redis_port)
        for _ in range(30):
            try:
                if client.ping():
                    break
            except redis.exceptions.ConnectionError:
                pass
            time.sleep(0.5)
        else:
            subprocess.run(['docker', 'stop', cls.redis_container_id], capture_output=True)
            raise RuntimeError('redis container did not become ready in time')

        cls.redis_url = f'redis://127.0.0.1:{redis_port}/0'

        cls.http_server = ThreadingHTTPServer(('127.0.0.1', 0), _OkHandler)
        cls.http_thread = Thread(target=cls.http_server.serve_forever, daemon=True)
        cls.http_thread.start()
        cls.test_url = 'http://127.0.0.1:{}/'.format(cls.http_server.server_port)

    @classmethod
    def tearDownClass(cls):
        cls.http_server.shutdown()
        subprocess.run(['docker', 'stop', cls.redis_container_id], capture_output=True)
        super().tearDownClass()

    def test_cached_session_write_and_read_against_real_redis(self):
        r_session = requests_cache.CachedSession(
            backend=requests_cache.RedisCache(
                connection=redis.StrictRedis.from_url(self.redis_url)
            ),
            cache_name='test_cache_compat',
            expire_after=requests_cache.NEVER_EXPIRE,
        )

        first = r_session.get(self.test_url)
        self.assertEqual(first.status_code, 200)
        self.assertFalse(first.from_cache)

        second = r_session.get(self.test_url)
        self.assertEqual(second.status_code, 200)
        self.assertTrue(second.from_cache)


class PinnedDependenciesStayPinnedTest(SimpleTestCase):
    databases = []

    def test_requests_and_requests_cache_stay_pinned(self):
        pyproject = tomllib.loads(
            (Path(__file__).resolve().parents[3] / 'pyproject.toml').read_text()
        )
        deps = {
            dep.split('==')[0].split('>')[0].split('<')[0].strip(): dep
            for dep in pyproject['project']['dependencies']
        }
        for name in ('requests', 'requests-cache'):
            self.assertIn('==', deps[name], (
                f'{name} is no longer pinned to an exact version - this pairing '
                'silently broke production once already '
                '(see CacheCompatTest), keep them pinned together'
            ))
