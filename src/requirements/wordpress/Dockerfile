FROM debian:bookworm

# basic setup
RUN apt update && apt upgrade

# wordpress
ADD https://fr.wordpress.org/latest-fr_FR.tar.gz .
RUN mkdir -p /var/www/
RUN tar -xvf latest-fr_FR.tar.gz -C /var/www

EXPOSE 9000
# CMD