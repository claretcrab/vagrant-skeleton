#!/usr/bin/env bash

#update
sudo apt-get update

#basic packages
sudo apt-get install -y vim curl build-essential python-software-properties git 

#apache
sudo apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

#php55
sudo add-apt-repository ppa:ondrej/php5
sudo apt-get update
sudo apt-get -y install php5 php5-common libapache2-mod-php5 php5-cli php5-curl php5-gd php5-mcrypt php5-mysql php-apc

#mysql
sudo apt-get -y install mysql-server mysql-client mysql-server-5.5 phpmyadmin

#other
sudo apt-get install -y php5-intl
sudo apt-get install -y redis-server php5-redis
sudo apt-get install -y imagemagick php5-imagick --fix-missing 
