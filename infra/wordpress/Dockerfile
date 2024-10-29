FROM wordpress:6.6-fpm-alpine

COPY custom.ini /usr/local/etc/php/conf.d/
COPY wordpress.sh /usr/local/sbin/
ENTRYPOINT ["/usr/local/sbin/wordpress.sh"]
CMD ["php-fpm"]
