FROM sync402/docker-php:cli-pure-7.3

RUN install-php-extensions amqp swoole-^4.8 \
&& rm -rf /var/cache/apk/* /tmp/* /usr/share/man /var/lib/apt/lists/* \