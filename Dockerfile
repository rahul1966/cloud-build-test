FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    apache2 \
    && rm -rf /var/lib/apt/lists/*

# Copy your web content to Apache's document root
COPY my_website /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache when the container starts
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]