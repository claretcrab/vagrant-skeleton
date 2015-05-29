#!/usr/bin/env bash

echo "Installing basic packages..."
sudo apt-get install -y vim curl build-essential python-software-properties git > /dev/null

echo "Installing Apache..."
sudo apt-get install -y apache2 > /dev/null

echo "Updating PHP repository..."
sudo add-apt-repository ppa:ondrej/php5 > /dev/null
sudo apt-get update > /dev/null

echo "Installing PHP and extensions..."
sudo apt-get -y install php5 php5-common libapache2-mod-php5 php5-cli php5-curl php5-gd php5-mcrypt php5-mysql php-apc php5-intl > /dev/null

echo "Installing MySQL..."
sudo apt-get -y install debconf-utils > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password 1234"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 1234"
sudo apt-get -y install mysql-server mysql-client > /dev/null

echo "Installing Redis..."
sudo apt-get install -y redis-server php5-redis > /dev/null

echo "Installing Other features..."
sudo apt-get install -y imagemagick php5-imagick --fix-missing > /dev/null
