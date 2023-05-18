# Utilisez une image de base alpine pour minimiser la taille de l'image
FROM alpine:latest

# Installez les dépendances nécessaires pour PHP et PostgreSQL
RUN apk --no-cache add php7 php7-pdo php7-pdo_pgsql php7-json postgresql-client

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers de votre application dans le conteneur
COPY . /app

# Exposez le port sur lequel votre application PHP va s'exécuter
EXPOSE 80

# Démarrez le serveur web PHP pour exécuter votre application
CMD ["php", "-S", "0.0.0.0:80"]

