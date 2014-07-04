mkdir /home/formation/.ssh
chmod 700 /home/formation/.ssh
cd /home/formation/.ssh
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
chmod 600 /home/formation/.ssh/authorized_keys
chown -R formation /home/formation/.ssh
