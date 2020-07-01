FROM debian
RUN apt-get update
RUN dpkg -a --configure
RUN apt-get install -y apache2
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y nginx
RUN apt-get install -y php
RUN mkdir /test_vol
CMD ["nginx", "-g", "daemon off;"]
#RUN 'nginx -g daemon off'
#RUN service nginx start