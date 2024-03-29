# docker-php

### 2024-03-29


#### Octane

Run With `/opt/start.sh`

```
#!/usr/bin/env bash

chmod +x /opt/*.sh
if [ -f "/opt/app.sh" ];then
  /bin/bash /opt/app.sh
fi

# For PHP And Nginx
cat /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini
cat /run/nginx/nginx.conf > /etc/nginx/nginx.conf

mkdir /home/wwwlogs
chown www-data:www-data /home/wwwlogs

# For Laravel
mkdir -p /var/www/html/storage/logs/
mkdir -p /var/www/html/storage/app/
mkdir -p /var/www/html/storage/framework/
chmod 777 -R /var/www/html/storage/

# For System
echo "COLUMNS=500" >> /root/.bashrc
echo 'alias ll="ls -la"' >> /root/.bashrc

# For Supervisor
if [ -d /var/www/html/supervisor.d/ ];then
    cp /var/www/html/supervisor.d/*.ini /etc/supervisor.d
fi

/usr/bin/supervisord -c /etc/supervisord.conf

nginx -g "daemon off;"

```


#### Nginx

Run With `/opt/start.sh`

```
#!/usr/bin/env bash

chmod +x /opt/*.sh
if [ -f "/opt/app.sh" ];then
  /bin/bash /opt/app.sh
fi

# For Nginx And PHP-FPM
cat /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini
cat /run/nginx/nginx.conf > /etc/nginx/nginx.conf

# For Laravel
mkdir /home/wwwlogs && chown www-data:www-data /home/wwwlogs
mkdir -p /var/www/html/storage/logs/
mkdir -p /var/www/html/storage/app/
mkdir -p /var/www/html/storage/framework/
chmod 777 -R /var/www/html/storage/

# For System
echo "COLUMNS=500" >> /root/.bashrc
echo 'alias ll="ls -la"' >> /root/.bashrc

# For Supervisor
if [ -d /var/www/html/supervisor.d/ ];then
    cp /var/www/html/supervisor.d/*.ini /etc/supervisor.d
fi

php-fpm -g "daemon on;"
nginx -g "daemon off;"

```


