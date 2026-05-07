FROM php:8.3-apache

# Installer les extensions PHP nécessaires
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Activer mod_rewrite pour Apache
RUN a2enmod rewrite

# Copier la configuration Apache personnalisée (autorise .htaccess)
COPY apache.conf /etc/apache2/sites-available/000-default.conf

# Exposer le port 80
EXPOSE 80
