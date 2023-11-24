# Use an official PHP image as the base image
FROM php:7.4-apache

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    git \
    unzip

# Install PHPUnit
RUN wget -q https://phar.phpunit.de/phpunit.phar && \
    chmod +x phpunit.phar && \
    mv phpunit.phar /usr/local/bin/phpunit

# Copy the application files into the container
COPY . /var/www/html

# Install MySQLi extension if required
RUN docker-php-ext-install mysqli

# Expose port 80 for Apache
EXPOSE 80

# Run PHPUnit tests when the container starts
CMD ["phpunit", "submit_test.php"]

# Start Apache web server 
CMD ["apache2-foreground"]
