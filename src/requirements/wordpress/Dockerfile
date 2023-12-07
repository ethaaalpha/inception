FROM debian:bullseye

# basic setup && php-fpm
RUN apt update -y && apt upgrade -y

# wordpress cli to configure installation (without web)
# openssl needed for wordpress cli download files
RUN apt install -y openssl ca-certificates
ADD https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar .
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

# wordpress dir location
RUN mkdir -p /var/www/wordpress

# php-fpm
RUN mkdir -p /run/php/
RUN apt install -y php-fpm php-mysqli
ADD conf/php-fpm.conf /etc/php/7.4/fpm/pool.d/www.conf

# setup wordpress with cli
ADD conf/config.sh .

EXPOSE 9000
CMD ["sh", "config.sh"]