#!/bin/bash

chmod +x /opt/*.sh

if [ -f "/opt/app.sh" ];then
  /bin/bash /opt/app.sh
fi

# For Nginx And PHP-FPM
cat /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini
cat /run/nginx/nginx.conf > /etc/nginx/nginx.conf

if [ ! -d "/etc/nginx/vhosts" ];then
  mkdir /etc/nginx/vhosts
fi

# For Laravel
mkdir /home/wwwlogs && chown www-data:www-data /home/wwwlogs
mkdir -p /var/www/html/storage/logs/supervisor
mkdir -p /var/www/html/storage/app/
mkdir -p /var/www/html/storage/framework/
chmod 777 -R /var/www/html/storage/

if [ -d "/var/www/html/bootstrap/cache" ];then
    chmod 777 -R /var/www/html/bootstrap/cache
fi

if [ -f "/var/www/html/artisan" ];then
    chmod +x /var/www/html/artisan
fi

# For System
echo "COLUMNS=2000" >> /root/.bashrc
echo 'alias ll="ls -la"' >> /root/.bashrc

# For Supervisor
if [ -d "/var/www/html/supervisor.d" ];then
    cp /var/www/html/supervisor.d/*.ini /etc/supervisor.d
fi

# For PHP_FPM
sed -i 's/no/yes/g' /usr/local/etc/php-fpm.d/zz-docker.conf

if [ -f "/opt/runtime.sh" ];then
  /bin/bash /opt/runtime.sh
fi

php-fpm
nginx -g "daemon off;"
