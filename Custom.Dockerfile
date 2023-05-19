# Utiliser une image de base contenant PostgreSQL
FROM php:7.4-alpine

COPY . /var/www/html/

EXPOSE 80

WORKDIR /var/www/html/

RUN docker-php-ext-install pdo pdo_pgsql

CMD ["php","-S","0.0.0.0:80"]