import os
import pwd
from fabric.api import cd, env, task, require, local, lcd, sudo
from fabric.contrib.files import exists

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
            'mkdir %s' % env.deploy_dir,
            'chown -R %s:%s %s' % (env.deploy_user, env.deploy_user, env.deploy_dir),
        )

    if env.deploy_type == 'dev':
        local('; '.join('sudo %s' % cmd for cmd in commands))
        local('sudo apt-get build-dep python-numpy --no-upgrade')
        return
    sudo('; '.join(commands))
    sudo('apt-get build-dep python-numpy --no-upgrade')


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
    with cd(repo_dir):
        sudo('. ../%s/bin/activate && pip install -r requirements.txt '
             '-r censusreporter/api/requirements.txt'
             % VIRTUALENV_DIR, user=env.deploy_user)
