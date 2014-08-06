import os
from fabric.api import env, task, require, local, sudo, execute, run

from api.config import DB_USER, DB_NAME, DB_PASSWORD


DATA_DIR = 'censusreporter/api/data'
PSQL_STRING = 'PGPASSWORD=%s psql -d %s -U %s -h localhost' \
              % (DB_PASSWORD, DB_NAME, DB_USER)
PACKAGES = (
    'postgresql-9.1',
    'memcached',
    'python-software-properties',
)


@task
def provision_api():
    require('deploy_type')

    sudo('apt-get install %s --no-upgrade' % ' '.join(PACKAGES))
    sudo('sed -i "s/local   all             all                                     peer/local   all             all                                     trust/" /etc/postgresql/9.1/main/pg_hba.conf')
    sudo('/etc/init.d/postgresql restart')

    # install libgdal
    sudo('apt-add-repository -y ppa:ubuntugis/ubuntugis-unstable')
    sudo('apt-get -q update')
    sudo('apt-get -q -y install libgdal1-dev')

    create_api_database()
    load_api_data()


@task
def create_api_database():
    require('deploy_type')

    create_user = "CREATE USER %s WITH PASSWORD '%s'" % (DB_USER, DB_PASSWORD) 
    create_db = "CREATE DATABASE %s WITH OWNER %s ENCODING 'UTF8' TEMPLATE template0" % (DB_NAME, DB_USER)

    if env.deploy_type == 'dev':
        local('echo "%s" | psql' % create_user)
        local('echo "%s" | psql' % create_db)
    else:
        sudo('echo "%s" | psql' % create_user, user='postgres')
        sudo('echo "%s" | psql' % create_db, user='postgres')


@task
def drop_api_database():
    require('deploy_type')

    if env.deploy_type == 'dev':
        local('echo "DROP DATABASE %s" | psql' % DB_NAME)
    else:
        sudo('echo "DROP DATABASE %s" | psql' % DB_NAME, user='postgres')


@task
def load_api_data():
    require('deploy_type', 'repo_dir')

    data_dir_abs = os.path.join(env.repo_dir, DATA_DIR)
    commands = (
        '%s -f %s/demarcation_2011.sql' % (PSQL_STRING, data_dir_abs),
        'for fp in `ls %s/*.tar.gz | xargs`; do tar -xvzf ${fp} -C %s/; done'
        % (data_dir_abs, data_dir_abs),
        'for fp in `ls %s/*.sql | grep -v demarcation_2011.sql | xargs`; '
        'do %s -f ${fp}; done' % (data_dir_abs, PSQL_STRING),
    )

    if env.deploy_type == 'dev':
        local('; '.join(commands))
    else:
        run('; '.join(commands))

@task
def reload_api_data():
    require('deploy_type')

    sudo('initctl stop censusreporter')

    execute(drop_api_database)
    execute(create_api_database)
    execute(load_api_data)

    sudo('initctl start censusreporter')
