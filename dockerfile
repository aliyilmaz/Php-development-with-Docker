FROM php:8.0-apache

WORKDIR /var/www/html

RUN apt-get update -y && \
    apt-get install -y libmariadb-dev && \
    chmod -R 755 /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

RUN a2enmod rewrite

EXPOSE 80

CMD ["apache2-foreground"]