FROM centos:8.4.2105

ARG WORK_DIR=/var/www/html
ARG NGINX_VERSION=1.22.1-1
ARG PHP_VERSION=8.1
ARG CENTOS_VERSION=8.5.2111
ENV COMPOSER_ALLOW_SUPERUSER 1
COPY ./conf/centos/laravel.conf /var/www/html/laravel.conf

WORKDIR ${WORK_DIR}

RUN rename '.repo' '.repo.bak' /etc/yum.repos.d/*.repo \
&& curl -o /etc/yum.repos.d/Centos-vault-${CENTOS_VERSION}.repo https://mirrors.aliyun.com/repo/Centos-vault-${CENTOS_VERSION}.repo \
&& curl -o /etc/yum.repos.d/epel-archive-8.repo https://mirrors.aliyun.com/repo/epel-archive-8.repo \
&& dnf -y clean all \
&& dnf -y makecache

RUN dnf -y install epel-release \
&& dnf -y update epel-release \
&& dnf -y clean all \
&& dnf -y makecache \
&& dnf -y install https://rpms.remirepo.net/enterprise/remi-release-8.5.rpm \
&& dnf -y module enable php:remi-${PHP_VERSION} \
&& dnf -y install php php-mysqlnd php-opcache php-curl php-dom php-exif php-fileinfo php-fpm php-gd php-hash \
php-json php-mbstring php-mysqli php-pdo_mysql php-openssl php-sockets php-sysvsem php-sysvshm php-sysvmsg \
php-pcre php-xml libsodium php-intl php-pecl-apcu php-zip php-bz2 php-bcmath php-mcrypt php-gettext  \
php-pcntl php-calendar php-igbinary php-imagick php-ldap php-lzf php-odbc php-protobuf php-snappy \
php-rdkafka php-shmop php-soap php-tidy php-xlswriter php-xmlrpc php-pdo_sqlite \
php-swoole php-redis php-amqp \
&& mkdir -p /run/php-fpm \
&& dnf -y install http://nginx.org/packages/centos/8/x86_64/RPMS/nginx-${NGINX_VERSION}.el8.ngx.x86_64.rpm \
&& mv laravel.conf /etc/nginx/conf.d/default.conf \
&& dnf -y install composer supervisor && dnf -y clean all

CMD ["php-fpm && /usr/sbin/nginx","-g","'daemon off;'"]

EXPOSE 80
