FROM php:7.3.9-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    && docker-php-ext-install pdo_mysql

RUN apt-get install unzip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www
