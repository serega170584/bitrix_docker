FROM debian
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y git
