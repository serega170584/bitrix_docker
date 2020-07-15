FROM debian:9
RUN apt-get update
RUN apt install apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://packages.sury.org/php/apt.gpg | sudo apt-key add -
RUN add-apt-repository "deb https://packages.sury.org/php/ $(lsb_release -cs) main"
RUN dpkg -a --configure
RUN apt-get install -y apache2
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y nginx
#RUN echo "deb https://packages.sury.org/php/ jessie main" > /etc/apt/sources.list.d/php.list
#RUN apt-get update
RUN apt install php7.1 php7.1-fpm  php7.1-opcache php7.1-zip php7.1-xmlrpc php7.1-xsl php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-odbc php7.1-pgsql php7.1-pspell php7.1-readline php7.1-recode php7.1-snmp php7.1-soap php7.1-sqlite3 php7.1-sybase php7.1-tidy php7.1-xml php7.1-json php7.1-ldap php7.1-intl php7.1-interbase php7.1-imap php7.1-gmp php7.1-gd php7.1-enchant php7.1-dba php7.1-bz2 php7.1-bcmath php7.1-phpdbg php7.1-cgi php7.1-cli
RUN apt install wget
RUN apt install -y zip
RUN mkdir /var/www/html/bitrix
RUN wget https://www.1c-bitrix.ru/download/standard_encode.zip --directory-prefix=/var/www/html/bitrix
RUN chown www-data:www-data /var/www/html/bitrix/standard_encode.zip
RUN cd /var/www/html/bitrix
RUN unzip /var/www/html/bitrix/standard_encode.zip -d /var/www/html/bitrix
RUN mkdir /var/www/html/bitrix/session
RUN chown -R www-data:www-data /var/www/html/bitrix
#CMD ["nginx", "-g", "daemon off;"]
#RUN service nginx start
RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
#RUN 'nginx -g daemon off'
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
#CMD ["nginx", "-g", "daemon off;"]