FROM php:latest
WORKDIR /var/www/html
COPY . /var/www/html
RUN apt-get -y update && apt-get -y install nginx
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 8000
CMD [ "php", "./index.php" ]
