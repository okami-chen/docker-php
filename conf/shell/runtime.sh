#!/usr/bin/env bash
# For System
echo "COLUMNS=2000" >> /root/.bashrc
echo 'alias ll="ls -la"' >> /root/.bashrc

if [ ! -d "/home/wwwlogs" ];then
    mkdir /home/wwwlogs
fi
# For Laravel

if [ -f "/var/www/html/artisan" ];then

  chmod +x /var/www/html/artisan

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

fi

echo -e "\033[42;37m Check Opcache \033[0m"

if [ ${OPCACHE_ENABLE} == 0 ];then
  sed -i 's/opcache.enable = 1/opcache.enable = 0/g' /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
fi

if [ -f "/var/www/html/storage/logs/octane-server-state.json" ];then
    rm -rf /var/www/html/storage/logs/octane-server-state.json
fi

echo -e "\033[42;37m Check /var/www/html/.env.${DOCKER_ENV} \033[0m"

if [ -f "/var/www/html/.env.${DOCKER_ENV}" ];then
    cat /var/www/html/.env.${DOCKER_ENV} > /var/www/html/.env
    echo -e "\033[42;37m cat .env.${DOCKER_ENV} ->  .env \033[0m"
fi

# For Supervisord

echo -e "\033[42;37m Check /var/www/html/supervisor.d \033[0m"

if [ -d /var/www/html/supervisor.d/ ];then
    cp /var/www/html/supervisor.d/*.ini /etc/supervisor.d
fi

echo -e "\033[42;37m Check /var/www/html/supervisor.d/${DOCKER_ENV} \033[0m"

if [ -d "/var/www/html/supervisor.d/${DOCKER_ENV}" ];then
    cp /var/www/html/supervisor.d/${DOCKER_ENV}/*.ini /etc/supervisor.d
    echo -e "\033[42;37m copy supervisor.d/${DOCKER_ENV}/*.ini To  /etc/supervisor.d \033[0m"
fi

# For Composer

echo -e "\033[42;37m Check /var/www/html/composer.${DOCKER_ENV}.json \033[0m"

if [ -f "/var/www/html/composer.${DOCKER_ENV}.json" ];then
  cat /var/www/html/composer.${DOCKER_ENV}.json > /var/www/html/composer.json
fi

if [ ! -d "/var/www/html/vendor" ];then
    if [ -f "/var/www/html/composer.json" ];then
      echo -e "\033[42;37m composer install start \033[0m"
      cd /var/www/html/ && composer install --optimize-autoloader --no-dev -vvv
      echo -e "\033[42;37m composer install finish \033[0m"
    fi
fi

#echo -e "\033[42;37m Check /var/www/html To www-data \033[0m"

#if [ -d "/var/www/html" ];then
#  chown -R www-data:www-data  /var/www/html
#fi

# For Nginx
if [ -f "/usr/local/etc/php-fpm.d/www.conf" ];then

    echo -e "\033[42;37m Replace php-fpm \033[0m"
    # pm.max_children：静态方式下开启的php-fpm进程数量
    # pm.max_requests：php-fpm子进程能处理的最大请求数

    # pm.start_servers：动态方式下的起始php-fpm进程数量
    # pm.min_spare_servers：动态方式下的最小php-fpm进程数
    # pm.max_spare_servers：动态方式下的最大php-fpm进程数量

    sed -i 's/pm = dynamic/pm = static/g' /usr/local/etc/php-fpm.d/www.conf
    sed -i 's/;pm.max_requests = 500/pm.max_requests = 500/g' /usr/local/etc/php-fpm.d/www.conf
    sed -i 's/pm.max_children = 5/pm.max_children = 100/g' /usr/local/etc/php-fpm.d/www.conf
    sed -i 's/pm.start_servers = 2/pm.start_servers = 80/g' /usr/local/etc/php-fpm.d/www.conf
    sed -i 's/pm.min_spare_servers = 1/pm.min_spare_servers = 20/g' /usr/local/etc/php-fpm.d/www.conf
    sed -i 's/pm.max_spare_servers = 3/pm.max_spare_servers = 100/g' /usr/local/etc/php-fpm.d/www.conf

fi

sleep 5s