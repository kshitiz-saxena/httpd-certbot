FROM httpd:2.4.43

#install certbot
RUN apt-get -y update && \
    apt-get -y install certbot python-certbot-apache

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

EXPOSE 80
EXPOSE 443