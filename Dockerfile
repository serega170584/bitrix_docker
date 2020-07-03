FROM debian
RUN apt-get update
RUN dpkg -a --configure
RUN apt-get install -y apache2
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y nginx
RUN apt-get install -y php
RUN apt install wget
RUN mkdir /var/www/html/bitrix
RUN chown www-data:www-data /var/www/html/bitrix
RUN wget https://www.1c-bitrix.ru/download/scripts/bitrixsetup.php --directory-prefix=/var/www/html/bitrix
RUN chown www-data:www-data /var/www/html/bitrix/bitrixsetup.php
RUN mkdir /var/www/html/bitrix/session
RUN chown www-data:www-data /var/www/html/bitrix/session
#CMD ["nginx", "-g", "daemon off;"]
#RUN service nginx start
RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
#RUN 'nginx -g daemon off'
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
#CMD ["nginx", "-g", "daemon off;"]