FROM debian
RUN apt-get update
RUN dpkg -a --configure
RUN apt-get install -y apache2
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y nginx
RUN mkdir /test_vol
VOLUME test_vol /test_vol
