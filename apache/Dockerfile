FROM ubuntu/apache2
COPY ./my-default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
COPY ./my-apache2.conf /etc/apache2/apache2.conf
COPY ./apache_ssl.key /etc/ssl/private/apache_ssl.key
COPY ./apache_ssl.crt /etc/ssl/certs/apache_ssl.crt
COPY ./proxy.conf /etc/apache2/sites-available/proxy.conf
RUN a2enmod ssl
RUN a2ensite default-ssl.conf
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_balancer
RUN systemctl restart apache2
EXPOSE 443
