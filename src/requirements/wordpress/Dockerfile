FROM debian:bullseye

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_HOST

# basic setup && php-fpm
RUN apt update && apt upgrade

# wordpress
ADD https://fr.wordpress.org/latest-fr_FR.tar.gz .
RUN mkdir -p /var/www/
RUN tar -xvf latest-fr_FR.tar.gz -C /var/www
ADD conf/wordpress.conf /var/www/wordpress/wp-config.php
RUN rm /var/www/wordpress/wp-config-sample.php
#php-fpm
RUN mkdir -p /run/php/
RUN apt install -y php-fpm php-mysqli
ADD conf/php-fpm.conf /etc/php/7.4/fpm/pool.d/www.conf

EXPOSE 9000
CMD ["php-fpm7.4", "-F", "-R"]