FROM php:apache
RUN apt-get update && \
    docker-php-ext-install mysqli && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 
COPY index.php /var/www/html/
EXPOSE 80
ENTRYPOINT /usr/sbin/apache2ctl -D FOREGROUND
