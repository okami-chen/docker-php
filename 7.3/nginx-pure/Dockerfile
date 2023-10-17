FROM sync402/docker-php:fpm-pure-7.3

COPY ./conf/nginx/start.sh /opt/start.sh
COPY ./conf/nginx/nginx.conf /run/nginx/nginx.conf

WORKDIR /tmp

RUN apk update && apk --no-cache add nginx && mkdir -p /run/nginx \
&& rm -rf /var/cache/apk/* /tmp/* /usr/share/man /var/lib/apt/lists/* \
&& chmod +x /opt/start.sh

EXPOSE 80

CMD ["/opt/start.sh"]


