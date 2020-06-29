FROM debian
RUN apt-get update
RUN dpkg -a --configure
RUN apt-get install -y apache2
RUN apt-get install -y git
