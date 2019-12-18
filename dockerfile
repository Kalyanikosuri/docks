FROM ubuntu:latest
RUN apt-get update && apt-get install apache2 -y
COPY webfile/htmlfile /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]

