FROM php:7.3.9-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    && docker-php-ext-install pdo_mysql

WORKDIR /var/www
