# Utiliser une image de base contenant PostgreSQL
FROM php:fpm-alpine

# Installer les dépendances PHP nécessaires
RUN apk update && apk add --no-cache postgresql-dev \
    && docker-php-ext-install pgsql pdo_pgsql

# Commande par défaut pour démarrer PHP et servir l'application
CMD ["php","-S","0.0.0.0:80"]
