from fabric.api import *
from fabric.contrib.files import *

root_dir = '/home/www-data'
host = 'censusreporter.org'
code_dir = '%s/%s_app' % (root_dir, host)
virtualenv_name = '%s_venv' % host
virtualenv_dir = '%s/%s' % (root_dir, virtualenv_name)
newrelic_app_name = 'Census Reporter Django'

def install_newrelic(api_key):
    """ Install the New Relic Python and Server agents using the specified API key. """
    with cd(code_dir):
        with prefix('source %s/bin/activate' % virtualenv_dir):
            sudo('newrelic-admin generate-config %s %s/newrelic.ini' % (api_key, code_dir), user='www-data')

    sudo("sed -i \"s/Python Application/%s/g\" %s/newrelic.ini" % (newrelic_app_name, code_dir), user='www-data')

def initial_config():
    """ Configure the remote host to run Census Reporter. """

    sudo('mkdir -p %s' % root_dir)
    sudo('chown www-data:www-data %s' % root_dir)

    # Install up to virtualenv
    sudo('apt-get install -q -y python-setuptools')
    sudo('easy_install pip')
    sudo('pip --quiet install virtualenv')

    # Create virtualenv and add our Flask app to it
    sudo('virtualenv --no-site-packages %s' % virtualenv_dir, user='www-data')
    sudo('rm -f %s/lib/python2.7/site-packages/censusreporter.pth' % virtualenv_dir, user='www-data')
    append('%s/lib/python2.7/site-packages/censusreporter.pth' % virtualenv_dir, '%s/censusreporter' % code_dir, use_sudo=True)
    append('%s/lib/python2.7/site-packages/censusreporter.pth' % virtualenv_dir, '%s/censusreporter/apps' % code_dir, use_sudo=True)
    sudo('chown www-data:www-data %s/lib/python2.7/site-packages/censusreporter.pth' % virtualenv_dir)

    # Install and set up gunicorn in the virtualenv
    with prefix('source %s/bin/activate' % virtualenv_dir):
        sudo('pip --quiet install gunicorn futures', user='www-data')

    sudo('rm -f /etc/init/%s.conf' % host)
    upload_template('./server/upstart.conf.template', '/etc/init/%s.conf' % host, use_sudo=True, context={
        'domainname': host,
        'project_path': code_dir,
        'virtualenv_dir': virtualenv_dir,
    })

    # Configure nginx to proxy requests to gunicorn
    sudo('rm -f /etc/nginx/sites-enabled/default')
    sudo('rm -f /etc/nginx/sites-enabled/%s' % host)
    sudo('rm -f /etc/nginx/sites-available/%s' % host)
    upload_template('./server/nginx.site.template', '/etc/nginx/sites-available/%s' % host, use_sudo=True, context={
        'domainname': host,
        'project_path': code_dir,
    })
    sudo('ln -s /etc/nginx/sites-available/%s /etc/nginx/sites-enabled' % host)

    with settings(warn_only=True):
        if sudo('test -d %s' % code_dir, user='www-data').failed:
            sudo('git clone git://github.com/censusreporter/censusreporter.git %s' % code_dir, user='www-data')

    # Start gunicorn
    sudo('start %s' % host)

    # Restart nginx
    sudo('service nginx restart')

def deploy(branch='master'):
    "Deploy the specified branch to the remote host."

    with cd(code_dir):
        sudo('find . -name \'*.pyc\' -delete', user='www-data')
        sudo('git pull origin %s' % branch, user='www-data')

        # Install pip requirements
        with prefix('source %s/bin/activate' % virtualenv_dir):
            sudo('pip --quiet --no-cache-dir install -r requirements.txt', user='www-data')

    # Restart gunicorn
    sudo('restart %s' % host)
