FROM kcyeu/ubuntu:latest
MAINTAINER Kuo-Cheng Yeu <kmd@mikuru.tw>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && apt-get -qqy install \ 
    apache2-mpm-worker \
    libapache2-mod-php5 \
&& rm -rf /var/lib/apt/lists/*

RUN a2enmod php5    
RUN echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

