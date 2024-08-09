#!/bin/bash

chmod +x /opt/*.sh

if [ -f "/opt/app.sh" ];then
  /bin/bash /opt/app.sh
fi

# For PHP And Nginx
cat /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini
cat /run/nginx/nginx.conf > /etc/nginx/nginx.conf

if [ -f "/opt/runtime.sh" ];then
  echo -e "\033[42;37m exec /opt/runtime.sh \033[0m"
  /bin/bash /opt/runtime.sh
fi

/usr/bin/supervisord -c /etc/supervisord.conf

if [ -f "/opt/service.sh" ];then
  /bin/bash /opt/service.sh
fi

sleep 2s

echo -e "\033[42;37m Start Web Server \033[0m"

nginx -g "daemon off;"
