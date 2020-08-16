yum remove httpd* php* -y
yum clean all -y
yum upgrade -y
which amazon-linux-extras
yum install -y httpd 
yum install -y httpd-tools mod_ssl
mv /etc/localtime /etc/localtime.bak
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
amazon-linux-extras enable php7.3
yum install -y php
yum install -y php-xml php-pdo php-mysqlnd php-gd php-mbstring php-mcrypt php-mysqlnd php-opcache
yum install -y php-pecl-imagick
yum install -y php-fpm
yum install -y mysql
amazon-linux-extras install redis4.0
systemctl enable redis
systemctl start redis
yum install -y php-pecl-redis
yum install -y php-pear php-devel
systemctl enable httpd
systemctl start httpd
systemctl enable php-fpm
systemctl start php-fpm
systemctl enable redis
systemctl start redis
