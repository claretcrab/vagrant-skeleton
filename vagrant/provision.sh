#!/usr/bin/env bash

echo "Updating packages list..."
sudo apt-get -qq update

echo "Installing basic packages..."
sudo apt-get install -y vim curl build-essential python-software-properties git cifs-utils > /dev/null 2>&1

echo "Updating PHP repository..."
sudo add-apt-repository ppa:ondrej/php5 > /dev/null 2>&1
sudo apt-get -qq update

echo "Installing Apache..."
sudo apt-get install -y apache2 > /dev/null 2>&1

echo "Installing PHP and extensions..."
sudo apt-get install -y php5 php5-common libapache2-mod-php5 php5-cli php5-curl php5-gd php5-mcrypt php5-mysql php-apc php5-intl > /dev/null 2>&1

echo "Installing MySQL..."
sudo apt-get install -y debconf-utils > /dev/null 2>&1
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password 1234"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 1234"
sudo apt-get install -y mysql-server mysql-client > /dev/null 2>&1

echo "Installing Redis..."
sudo apt-get install -y redis-server php5-redis > /dev/null 2>&1

echo "Installing Other features..."
sudo apt-get install -y imagemagick php5-imagick --fix-missing > /dev/null 2>&1
