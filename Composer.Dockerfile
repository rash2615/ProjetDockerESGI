# Utiliser une image de base contenant PHP et Composer
FROM composer

# Définir le répertoire de travail
WORKDIR /app

# Exécuter les commandes ou les scripts supplémentaires nécessaires pour configurer Composer

# Commande par défaut pour exécuter Composer
CMD ["composer"]
