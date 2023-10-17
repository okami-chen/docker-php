FROM php:8.2-fpm-alpine

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
COPY ./conf/php/fpm.sh /tmp/php-fpm.sh

ARG DOCKER_ENV=production
ENV TIMEZONE=${timezone:-"Asia/Shanghai"} \
    LANG=C.UTF-8 \
    COMPOSER_ALLOW_SUPERUSER=1

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk update \
&& apk add -U tzdata \
&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone \
&& apk del tzdata \
&& install-php-extensions intl ldap dba shmop calendar exif gettext pcntl sysvsem sysvshm sysvmsg \
pdo_mysql mysqli bcmath sockets zip bz2 mcrypt redis opcache @composer amqp mongodb \
&& composer config -g repo.packagist composer https://mirrors.cloud.tencent.com/composer/ \
&& apk update && apk upgrade && apk add --no-cache bash bash-completion supervisor \
&& chmod +x /tmp/php-fpm.sh && /bin/bash /tmp/php-fpm.sh \
&& rm -rf /var/cache/apk/* /tmp/* /usr/share/man /var/lib/apt/lists/*