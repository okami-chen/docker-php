FROM php:8.1-fpm-alpine

COPY ./run.sh /opt/run.sh
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

ENV TIMEZONE=${timezone:-"Asia/Shanghai"} \
    APP_ENV=production \
    LANG=C.UTF-8

RUN apk add -U tzdata \
&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone \
&& apk del tzdata \
&& install-php-extensions intl ldap dba shmop calendar exif gettext pcntl sysvsem sysvshm sysvmsg \
pdo_mysql mysqli bcmath sockets zip bz2 mcrypt sodium amqp redis swoole @composer \
&& composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
&& rm -rf /var/cache/apk/* /tmp/* /usr/share/man /var/lib/apt/lists/* \
&& apt-get clean && chmod +x /opt/run.sh
