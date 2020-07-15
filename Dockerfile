FROM debian:9
RUN apt-get update
RUN apt-get install -y gnupg2
RUN apt install -y apt-transport-https
RUN apt install -y ca-certificates
RUN apt install -y curl
RUN apt install -y software-properties-common
RUN curl -fsSL https://packages.sury.org/php/apt.gpg | apt-key add -
RUN add-apt-repository "deb https://packages.sury.org/php/ $(lsb_release -cs) main"
RUN dpkg -a --configure
RUN apt-get install -y apache2
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y nginx
#RUN echo "deb https://packages.sury.org/php/ jessie main" > /etc/apt/sources.list.d/php.list
#RUN apt-get update
RUN apt install -y php7.1
RUN apt install -y php7.1-opcache
RUN apt install -y php7.1-zip
RUN apt install -y php7.1-xmlrpc
RUN apt install -y php7.1-xsl
RUN apt install -y php7.1-mbstring
RUN apt install -y php7.1-mcrypt
RUN apt install -y php7.1-mysql
RUN apt install -y php7.1-odbc
RUN apt install -y php7.1-readline
RUN apt install -y php7.1-recode
RUN apt install -y php7.1-snmp
RUN apt install -y php7.1-soap
RUN apt install -y php7.1-sqlite3
RUN apt install -y php7.1-sybase
RUN apt install -y php7.1-tidy
RUN apt install -y php7.1-xml
RUN apt install -y php7.1-json
RUN apt install -y php7.1-ldap
RUN apt install -y php7.1-intl
RUN apt install -y php7.1-interbase
RUN apt install -y php7.1-imap
RUN apt install -y php7.1-gmp
RUN apt install -y php7.1-gd
RUN apt install -y php7.1-enchant
RUN apt install -y php7.1-dba
RUN apt install -y php7.1-bz2
RUN apt install -y php7.1-bcmath
RUN apt install -y php7.1-phpdbg
RUN apt install -y php7.1-cgi
RUN apt install -y php7.1-cli
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