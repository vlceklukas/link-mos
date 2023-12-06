# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install any needed extensions (example: mysqli)
# RUN docker-php-ext-install mysqli

# Grant write permissions for the Apache process in the web directory (optional)
# RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache server in the foreground
CMD ["apache2-foreground"]
