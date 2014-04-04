import os
import pwd
from fabric.api import cd, env, task, require, local, lcd, sudo, prefix, shell_env
from fabric.contrib.files import exists, upload_template

from api.fabfile import (provision_api, create_api_database, drop_api_database,
                         load_api_data)


VIRTUALENV_DIR = 'censusreporter_ve'
CODE_DIR = 'censusreporter'
PROD_HOSTS = ['5.9.108.98:2224']
PACKAGES = (
    'git-core',
    'python-virtualenv',
    'sqlite3',
    'memcached',
    'upstart',
    'nginx'
)
# Nginx & Upstart constants
SERVER_NAMES = '5.9.108.98 mmm-dashboard.code4sa.org'
PROXY_PORT = 5001
PROXY_HOST = '127.0.0.1'
LOG_DIR = 'censusreporter_logs'


@task
def dev():
    env.deploy_type = 'dev'
    env.deploy_user = pwd.getpwuid(os.getuid())[0]
    env.deploy_dir = os.path.join(os.path.abspath(os.path.dirname(__file__)), '../')
    env.branch = None  # deploy whichever branch we are currently on


@task
def prod():
    env.deploy_type = 'prod'
    env.deploy_user = 'www-data'
    env.deploy_dir = '/var/www-data/'
    env.branch = 'develop'
    env.hosts = PROD_HOSTS


@task
def provision_censusreporter():
    require('deploy_type', provided_by=[dev, prod])

    commands = (
        'apt-get install %s --no-upgrade' % ' '.join(PACKAGES),
    )
    if env.deploy_type == 'prod':
        commands += (
            'mkdir -p %s' % env.deploy_dir,
            'chown -R %s:%s %s' % (env.deploy_user, env.deploy_user, env.deploy_dir),
        )

    if env.deploy_type == 'dev':
        local('; '.join('sudo %s' % cmd for cmd in commands))
        local('sudo apt-get build-dep python-numpy python-psycopg2 --no-upgrade')
        return
    sudo('; '.join(commands))
    sudo('apt-get build-dep python-numpy python-psycopg2 --no-upgrade')


@task
def deploy_censusreporter():
    require('deploy_type', 'deploy_user', 'deploy_dir', 'branch',
            provided_by=[dev, prod])

    repo_dir = os.path.join(env.deploy_dir, CODE_DIR)
    ve_dir = os.path.join(env.deploy_dir, VIRTUALENV_DIR)

    if env.deploy_type == 'dev':
        with lcd(repo_dir):
            local('git pull')
            local('. ~/.virtualenvs/%s/bin/activate && pip install -r requirements.txt'
                  % CODE_DIR)
        return

    if not exists(ve_dir):
        sudo('virtualenv -p python2.7 %s' % ve_dir, user=env.deploy_user)

    if not exists(repo_dir):
        with cd(env.deploy_dir):
            sudo('git clone -b %s https://github.com/Rizziepit/censusreporter.git'
                 % env.branch, user=env.deploy_user)
    else:
        with cd(repo_dir):
            sudo('git checkout -B %s' % env.branch, user=env.deploy_user)
            sudo('git pull origin %s' % env.branch, user=env.deploy_user)

    # upload pth file to manage python path
    upload_template(os.path.join(os.path.dirname(__file__), 'conf/pythonpath.template'),
                    '%s/lib/python2.7/site-packages/censusreporter.pth' % ve_dir,
                    {'project-dir': repo_dir}, use_sudo=True, backup=False)

    with cd(repo_dir), prefix('. ../%s/bin/activate' % VIRTUALENV_DIR):
        sudo('pip install -r requirements.txt', user=env.deploy_user)
        sudo('pip install -r censusreporter/api/requirements.txt',
             user=env.deploy_user)
        sudo('python manage.py collectstatic --settings=config.prod.settings '
             '--noinput', user=env.deploy_user)

    # render and upload templates
    upload_template(os.path.join(os.path.dirname(__file__), 'conf/nginx.template'),
                    '/etc/nginx/sites-enabled/censusreporter.conf',
                    get_nginx_template_context(), use_sudo=True, backup=False)
    upload_template(os.path.join(os.path.dirname(__file__), 'conf/upstart.template'),
                    '/etc/init/censusreporter.conf',
                    get_upstart_template_context(), use_sudo=True, backup=False)
    # make sure logging dir exists and update processes
    log_dir = os.path.join(env.deploy_dir, LOG_DIR)
    sudo('mkdir -p %s' % log_dir, user=env.deploy_user)
    sudo('initctl restart censusreporter')
    sudo('/etc/init.d/nginx reload')


def get_nginx_template_context():
    return {
        'server-name': SERVER_NAMES,
        'server-port': 80,
        'static-path': os.path.join(env.deploy_dir, 'censusreporter/censusreporter/static'),
        'log': os.path.join(env.deploy_dir, LOG_DIR, 'nginx.log'),
        'err-log': os.path.join(env.deploy_dir, LOG_DIR, 'nginx.err'),
        'proxy-host': PROXY_HOST,
        'proxy-port': PROXY_PORT,
    }


def get_upstart_template_context():
    return {
        'user': env.deploy_user,
        'project-dir': os.path.join(env.deploy_dir, CODE_DIR),
        've-dir': os.path.join(env.deploy_dir, VIRTUALENV_DIR),
        'log': os.path.join(env.deploy_dir, LOG_DIR, 'gunicorn.log'),
        'err-log': os.path.join(env.deploy_dir, LOG_DIR, 'gunicorn.err'),
        'host': PROXY_HOST,
        'port': PROXY_PORT,
    }
