#!/bin/bash

chmod +x /opt/*.sh

if [ -f "/opt/app.sh" ];then
  /bin/bash /opt/app.sh
fi

if [ -f "/opt/runtime.sh" ];then
  echo -e "\033[42;37m exec /opt/runtime.sh \033[0m"
  /bin/bash /opt/runtime.sh
fi

/usr/bin/supervisord -c /etc/supervisord.conf

if [ -f "/opt/service.sh" ];then
  /bin/bash /opt/service.sh
fi

sleep 2s

echo -e "\033[42;37m Start Use Cli \033[0m"

/usr/local/bin/php
