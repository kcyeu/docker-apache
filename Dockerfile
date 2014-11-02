FROM kcyeu/ubuntu:latest
MAINTAINER Kuo-Cheng Yeu <kmd@mikuru.tw>

RUN apt-get -qq update && apt-get -qqy install \ 
    apache2-mpm-worker
    

#RUN mkdir -p /var/docker-data1/apache2/log

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data

#ENV APACHE_LOG_DIR /var/docker-data1/apache2/log

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

