#!/bin/bash

chmod +x /opt/*.sh

if [ -f "/opt/app.sh" ];then
  /bin/bash /opt/app.sh
fi

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

sleep 3s

/usr/sbin/nginx -g 'daemon off;'