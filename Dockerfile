# Use an official PHP image with Apache
FROM php:7.4-apache

# Install Vim (optional)
RUN apt-get update && \
    apt-get install -y vim && \
    rm -rf /var/lib/apt/lists/*

# Copy SSL certificate and key
COPY localhost.crt /etc/ssl/certs/localhost.crt
COPY localhost.key /etc/ssl/private/localhost.key

# Copy the custom Apache virtual host config
COPY ./my-httpd-vhosts.conf /etc/apache2/sites-available/my-ssl.conf

# Enable SSL module, configure Apache for PHP support, and enable our SSL site configuration
RUN a2enmod ssl && \
    a2enmod rewrite && \
    a2dissite 000-default default-ssl && \
    a2ensite my-ssl

# Copy your PHP application into the default Apache document root
COPY ./public-html/ /var/www/html/