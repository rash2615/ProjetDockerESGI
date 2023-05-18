FROM php:7.4-fpm-alpine

# Installe les dépendances nécessaires
RUN docker-php-ext-install pdo pdo_pgsql

# Copie le code source de l'application
COPY . /var/www/html

# Définit le répertoire de travail
WORKDIR /var/www/html

# Expose le port 9000 pour la communication avec Nginx
EXPOSE 9000
