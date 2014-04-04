import os
import pwd
from fabric.api import env, task, require, local, sudo

from sqlalchemy.schema import CreateTable

from api.models import Base
from api.config import DB_USER, DB_NAME, DB_PASSWORD


# This assumes certain things were set up on hosts.
# Host provisioning should be somewhere else ideally.
#
# postgresql


DATABASE_HOST = []
PSQL_STRING = 'PGPASSWORD=%s psql -d %s -U %s -h localhost' \
        % (DB_PASSWORD, DB_NAME, DB_USER)


@task
def dev():
    env.deploy_type = 'dev'
    env.deploy_user = pwd.getpwuid(os.getuid())[0]


@task
def prod():
    env.deploy_type = 'prod'
    env.deploy_user = 'www-data'
    env.hosts = DATABASE_HOST


@task
def create_database():
    require('deploy_type', 'deploy_user', provided_by=[dev, prod])

    create_user = "CREATE USER %s WITH PASSWORD '%s'" % (DB_USER, DB_PASSWORD) 
    create_db = "CREATE DATABASE %s WITH OWNER %s ENCODING 'UTF8'" % (DB_NAME, DB_USER)

    if env.deploy_type == 'dev':
        local('echo "%s" | sudo -u postgres psql' % create_user)
        local('echo "%s" | sudo -u postgres psql' % create_db)
        return

    sudo('echo "%s" | psql' % create_user, user='postgres')
    sudo('echo "%s" | psql' % create_db, user='postgres')


@task
def drop_database():
    require('deploy_type', 'deploy_user', provided_by=[dev, prod])

    if env.deploy_type == 'dev':
        local('echo "DROP DATABASE %s" | sudo -u postgres psql' % DB_NAME)
        return

    sudo('echo "DROP DATABASE %s" | psql' % DB_NAME, user='postgres')


@task
def reset_tables():
    require('deploy_type', 'deploy_user', provided_by=[dev, prod])

    truncate_cmd = "TRUNCATE %s CASCADE" % ', '.join(t.name for t in
                                             reversed(Base.metadata.sorted_tables))

    if env.deploy_type == 'dev':
        local('echo "%s" | %s' % (truncate_cmd, PSQL_STRING))
        return

    sudo('echo "%s" | %s' % (truncate_cmd, PSQL_STRING), user=env.deploy_user)


@task
def create_tables():
    require('deploy_type', 'deploy_user', provided_by=[dev, prod])

    for table in Base.metadata.sorted_tables:
        table_create = CreateTable(table)
        if env.deploy_type == 'dev':
            local('echo "%s" | %s' % (table_create, PSQL_STRING))
        else:
            sudo('echo "%s" | %s' % (table_create, PSQL_STRING), user=env.deploy_user)
