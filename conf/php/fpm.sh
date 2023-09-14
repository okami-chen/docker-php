cat /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini

echo "upload_max_filesize=64M" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-zzz.ini
echo "post_max_size=64M" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-zzz.ini
echo "memory_limit=64M" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-zzz.ini
echo "date.timezone=Asia/Shanghai" >> /usr/local/etc/php/docker-php-ext-zzz-zzz.ini
echo "display_errors = On" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-zzz.ini

echo -e "\033[42;37m Check Opcache ${OPCACHE_ENABLE} \033[0m"

echo "opcache.enable = ${OPCACHE_ENABLE}" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
echo "opcache.enable_cli = 0" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
echo "opcache.memory_consumption = 128" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
echo "opcache.interned_strings_buffer = 8" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
echo "opcache.max_accelerated_files = 4000" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
echo "opcache.save_comments = 1" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
echo "opcache.jit=tracing" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
echo "opcache.jit_buffer_size=100M" >> /usr/local/etc/php/conf.d/docker-php-ext-zzz-opcache.ini
