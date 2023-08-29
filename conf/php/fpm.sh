cat /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini

echo "upload_max_filesize=64M" >> /usr/local/etc/php/conf.d/99_overrides.ini
echo "post_max_size=64M" >> /usr/local/etc/php/conf.d/99_overrides.ini
echo "memory_limit=64M" >> /usr/local/etc/php/conf.d/99_overrides.ini
echo "date.timezone=Asia/Shanghai" >> /usr/local/etc/php/conf.d/99_overrides.ini
echo "display_errors = On" >> /usr/local/etc/php/conf.d/99_overrides.ini
