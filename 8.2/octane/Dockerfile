FROM sync402/docker-php:cli-8.2

COPY ./conf/octane/start.sh /opt/start.sh
COPY ./conf/octane/nginx.conf /run/nginx/nginx.conf
COPY ./conf/octane/octane.ini /etc/supervisor.d/octane.ini

ENV OCTANE_WORKERS=4 \
    OCTANE_TASKS=4 \
    OCTANE_MAX_REQUESTS=2000

WORKDIR /tmp

RUN apk update && apk --no-cache add nginx && mkdir -p /run/nginx \
&& rm -rf /var/cache/apk/* /tmp/* /usr/share/man /var/lib/apt/lists/* \
&& chmod +x /opt/start.sh

EXPOSE 80 8000

CMD ["/opt/start.sh"]


