#!/bin/bash

# Apache Server
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on

service httpd stop
rm -rf /var/www/html
ln -s /vagrant /var/www/html
service httpd start

# PHP server install
yum install -y php php-cli php-devel php-mysql

# Download the internet content
cd /vagrant
sudo -u vagrant wget -q "https://raw.githubusercontent.com/RSamal/test/master/files/index.html"
sudo -u vagrant wget -q "https://raw.githubusercontent.com/RSamal/test/master/files/info.php"
