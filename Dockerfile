FROM debian
RUN apt update
RUN apt install -y apache2
RUN apt install -y git
