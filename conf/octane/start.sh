#!/bin/bash

chmod +x /opt/*.sh

if [ -f "/opt/app.sh" ];then
  /bin/bash /opt/app.sh
fi

# For PHP And Nginx
cat /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini
cat /run/nginx/nginx.conf > /etc/nginx/nginx.conf

# For Laravel
if [ ! -d "/home/wwwlogs" ];then
    mkdir /home/wwwlogs
fi

chown www-data:www-data /home/wwwlogs

if [ ! -d "/var/www/html/storage" ];then
    mkdir /var/www/html/storage
fi

if [ ! -d "/var/www/html/storage/logs" ];then
    mkdir /var/www/html/storage/logs
fi

if [ ! -d "/var/www/html/storage/app" ];then
    mkdir /var/www/html/storage/app
fi

if [ ! -d "/var/www/html/storage/framework" ];then
    mkdir /var/www/html/storage/framework
fi

if [ ! -d "/var/www/html/storage/logs/supervisor" ];then
  mkdir -p /var/www/html/storage/logs/supervisor
fi

if [ ! -f "/var/www/html/storage/logs/supervisor/app_out.log" ];then
    touch /var/www/html/storage/logs/supervisor/app_out.log
fi

if [ ! -f "/var/www/html/storage/logs/supervisor/app_out.log" ];then
    touch /var/www/html/storage/logs/supervisor/app_err.log
fi

chmod 777 -R /var/www/html/storage

if [ ! -d "/var/www/html/bootstrap/cache" ];then
  mkdir -p /var/www/html/bootstrap/cache
fi

if [ -d "/var/www/html/bootstrap/cache" ];then
    chmod 777 -R /var/www/html/bootstrap/cache
fi

if [ -f "/var/www/html/artisan" ];then
    chmod +x /var/www/html/artisan
fi

# For System
echo "COLUMNS=2000" >> /root/.bashrc
echo 'alias ll="ls -la"' >> /root/.bashrc

echo -e "\033[42;37m Check Opcache \033[0m"

if [ ${OPCACHE_ENABLE} == 0 ];then
  sed -i 's/opcache.enable = 1/opcache.enable = 0/g' /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
fi

if [ -f "/var/www/html/storage/logs/octane-server-state.json" ];then
    rm -rf /var/www/html/storage/logs/octane-server-state.json
fi

# For Supervisor

if [ -d "/var/www/html/supervisor.d" ];then
  echo -e "\033[42;37m copy /var/www/html/supervisor.d \033[0m"
  cp /var/www/html/supervisor.d/*.ini /etc/supervisor.d
fi

if [ -f "/opt/runtime.sh" ];then
  echo -e "\033[42;37m exec /opt/runtime.sh \033[0m"
  /bin/bash /opt/runtime.sh
fi

if [ -f "/opt/supervisor.sh" ];then
  /bin/bash /opt/supervisor.sh
fi

/usr/bin/supervisord -c /etc/supervisord.conf

if [ -f "/opt/service.sh" ];then
  /bin/bash /opt/service.sh
fi

sleep 2s

echo -e "\033[42;37m Start Web Server \033[0m"

nginx -g "daemon off;"
