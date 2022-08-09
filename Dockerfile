FROM devopsedu/webapp

MAINTAINER Abhishek

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf

RUN mkdir -p /var/apache2/httpd

ENV APACHE_RUN_USER www-data

ENV APACHE_RUN_GROUP www-data

ENV APACHE_LOG_DIR /var/log/apache2

ENV APACHE_RUN_DIR /var/apache2/httpd

EXPOSE 8090

ADD website /var/www/html

RUN rm /var/www/html/index.html

CMD apachectl -D FOREGROUND
