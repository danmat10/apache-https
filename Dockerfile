FROM ubuntu/apache2
COPY ./my-default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
COPY ./my-apache2.conf /etc/apache2/apache2.conf
COPY ./apache_ssl.key /etc/ssl/private/apache_ssl.key
COPY ./apache_ssl.crt /etc/ssl/certs/apache_ssl.crt
RUN a2enmod ssl
RUN a2ensite default-ssl.conf
RUN service apache2 restart
EXPOSE 443
