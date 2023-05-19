# Utiliser une image de base contenant PHP et Apache
FROM php:7.4-apache

# Copier les fichiers de l'application dans le conteneur
COPY . /var/www/html

# Exposer le port 80 pour accéder à l'application via HTTP
EXPOSE 80

# Définir le répertoire de travail
WORKDIR /var/www/html

# Installer les dépendances PHP nécessaires
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Exécuter les commandes ou les scripts supplémentaires nécessaires pour configurer l'application

# Commande par défaut pour démarrer Apache et servir l'application
CMD ["apache2-foreground"]
