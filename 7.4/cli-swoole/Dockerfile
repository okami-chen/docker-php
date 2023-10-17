FROM sync402/docker-php:cli-pure-7.4

RUN install-php-extensions amqp swoole-^4.8 \
&& rm -rf /var/cache/apk/* /tmp/* /usr/share/man /var/lib/apt/lists/* \
&& echo "swoole.use_shortname = 'Off'" > /usr/local/etc/php/conf.d/docker-php-ext-swoole-ext.ini