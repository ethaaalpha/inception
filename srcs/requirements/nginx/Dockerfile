FROM debian:bullseye

# needed args
ARG DOMAIN

# install apt's needed
RUN apt update -y && apt upgrade -y
RUN apt install -y nginx
RUN apt install -y openssl

# about the TLS 2.0
# create certificate for https
# RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/certs/ebillon.42.fr.key -out /etc/ssl/private/nginx/ebillon.42.fr.crt -subj "/C=fr/ST=Rhone/L=Lyon/O=42/CN=ebillon.42.fr"

# add the conf site to sites-avaibles then symbolic link to sites-enables
COPY conf/ebillon.conf /etc/nginx/sites-available/${DOMAIN}
RUN ln -s /etc/nginx/sites-available/${DOMAIN} /etc/nginx/sites-enabled/${DOMAIN}
COPY conf/${DOMAIN}.crt /etc/ssl/certs/
COPY conf/${DOMAIN}.key /etc/ssl/keys/

# expose for documentation
EXPOSE 443
CMD [ "nginx", "-g", "daemon off;" ]