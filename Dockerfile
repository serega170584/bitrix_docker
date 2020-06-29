FROM debian
RUN apt update
CMD apt install -y apache2
CMD apt install -y git
