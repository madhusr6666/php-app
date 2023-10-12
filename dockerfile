# Use an official PHP image as the base image
FROM php:7.4-apache

# Copy the application files into the container
COPY . /var/www/html

RUN docker-php-ext-install mysqli


# Expose port 80 for Apache
EXPOSE 80

# Start Apache web server
CMD ["apache2-foreground"]

~                       
