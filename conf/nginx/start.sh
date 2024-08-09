#!/bin/bash

chmod +x /opt/*.sh

if [ -f "/opt/app.sh" ];then
  /bin/bash /opt/app.sh
fi

# For Nginx And PHP-FPM
cat /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini
cat /run/nginx/nginx.conf > /etc/nginx/nginx.conf

if [ -f "/opt/runtime.sh" ];then
  echo -e "\033[42;37m exec /opt/runtime.sh \033[0m"
  /bin/bash /opt/runtime.sh
fi

/usr/bin/supervisord -c /etc/supervisord.conf

if [ ! -d "/etc/nginx/vhosts" ];then
  mkdir /etc/nginx/vhosts
fi

# For PHP_FPM
sed -i 's/no/yes/g' /usr/local/etc/php-fpm.d/zz-docker.conf

php-fpm

nginx -g "daemon off;"
