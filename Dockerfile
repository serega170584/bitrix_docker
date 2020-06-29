FROM debian
RUN apt update -y
RUN apt install apache2 -y
RUN apt install git -y
