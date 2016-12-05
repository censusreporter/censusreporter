echo "export DJANGO_SETTINGS_MODULE=config.dev.settings" >>/home/vagrant/.profile
echo "export PYTHONPATH=/vagrant/censusreporter:/vagrant/censusreporter/apps" >>/home/vagrant/.profile
cat <<EOF > /home/vagrant/runserver 
#!/bin/bash
python /vagrant/manage.py runserver 0.0.0.0:8000
EOF
chmod 755 /home/vagrant/runserver

sudo apt-get update
sudo apt-get install -y python-dev libxml2 libxslt1-dev git-core python-pip 
cd /vagrant
sudo pip install -r requirements.txt

