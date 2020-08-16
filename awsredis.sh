#!/usr/bin/env bash

sudo yum remove httpd* php* -y
sudo yum clean all -y
sudo yum upgrade -y
sudo which amazon-linux-extras
sudo yum install -y httpd 
sudo yum install -y httpd-tools mod_ssl
sudo mv /etc/localtime /etc/localtime.bak
sudo ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
sudo amazon-linux-extras enable php7.3
sudo yum install -y php
sudo yum install -y php-xml php-pdo php-mysqlnd php-gd php-mbstring php-mcrypt php-mysqlnd php-opcache
sudo yum install -y php-pecl-imagick
sudo yum install -y php-fpm
sudo yum install -y mysql
sudo amazon-linux-extras install -y redis4.0
sudo systemctl enable redis
sudo systemctl start redis
sudo yum install -y php-pecl-redis
sudo yum install -y php-pear php-devel
sudo systemctl enable httpd
sudo systemctl start httpd
sudo systemctl enable php-fpm
sudo systemctl start php-fpm
sudo systemctl enable redis
sudo systemctl start redis
sudo amazon-linux-extras install -y epel
sudo yum -y update
sudo yum install -y fail2ban
