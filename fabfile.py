from fabric.api import *
from fabric.contrib.files import *
from fabric.colors import red


def deploy(branch='master'):
    "Deploy the specified branch to the remote host."

    code_dir = 'django_app'
    virtualenv_name = 'django_venv'

    # Install required packages
    sudo('apt-get update')
    sudo('apt-get install -y git')

    # Install up to virtualenv
    sudo('apt-get install -y python-setuptools')
    sudo('easy_install pip')
    sudo('pip install virtualenv')

    # Create virtualenv and add our django app to its PYTHONPATH
    run('virtualenv --no-site-packages %s' % virtualenv_name)
    run('rm -f %s/lib/python2.7/site-packages/censusreporter.pth' % virtualenv_name)
    append('%s/lib/python2.7/site-packages/censusreporter.pth' % virtualenv_name, '/home/ubuntu/%s/censusreporter' % code_dir)
    append('%s/lib/python2.7/site-packages/censusreporter.pth' % virtualenv_name, '/home/ubuntu/%s/censusreporter/apps' % code_dir)
    append('%s/bin/activate' % virtualenv_name, "export DJANGO_SETTINGS_MODULE='config.dev.settings'")

    with settings(warn_only=True):
        if run('test -d %s' % code_dir).failed:
            print(red('Cloning fresh repo.'))
            run('git clone git://github.com/censusreporter/censusreporter.git %s' % code_dir)

    with cd(code_dir):
        print(red('Pulling %s from GitHub' % branch))
        run('git pull origin %s' % branch)

        # Install pip requirements
        run('source /home/ubuntu/%s/bin/activate && pip install -r requirements.txt' % virtualenv_name)

        # Run the server
        run('source /home/ubuntu/%s/bin/activate && python manage.py runserver 0.0.0.0:8000' % virtualenv_name)
