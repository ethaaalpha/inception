FROM debian:bookworm

# install apt's needed
RUN apt update && apt upgrade
RUN apt install -y wget

RUN wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN mkdir -p /var/www/
RUN tar -xvf latest-fr_FR.tar.gz -C /var/www/