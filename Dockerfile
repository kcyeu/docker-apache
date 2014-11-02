FROM kcyeu/ubuntu:latest
MAINTAINER Kuo-Cheng Yeu <kmd@mikuru.tw>

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /var/docker-data1/apache2/log
RUN mkdir -p /var/docker-data1/apache2/data
RUN ln -s /var/docker-data1/apache2/log /var/log/www
RUN ln -s /var/docker-data1/apache2/data /var/www

RUN apt-get -qq update && apt-get -qqy install \ 
    apache2-mpm-worker \
    libapache2-mod-php5
#    libapache2-mod-fastcgi

RUN a2enmod php5    


#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data

#ENV APACHE_LOG_DIR /var/docker-data1/apache2/log

RUN echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

