FROM debian:bookworm

# needed args
ARG DOMAIN

# install apt's needed    server_name www.sahafid.1337.ma sahafid.1337.ma;

    ssl_certificate here_certs;
    ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;

    ssl_protocols TLSv1.3;

    index 
RUN apt update && apt upgrade
RUN apt install -y nginx
RUN apt install -y openssl

# about the TLS 2.0
# create certificate for https
# RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/certs/ebillon.42.fr.key -out /etc/ssl/private/nginx/ebillon.42.fr.crt -subj "/C=fr/ST=Rhone/L=Lyon/O=42/CN=ebillon.42.fr"

# erase old config and copy the new one
RUN rm /etc/nginx/nginx.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/${DOMAIN}.crt /etc/ssl/certs/
COPY conf/${DOMAIN}.key /etc/ssl/keys/

# expose for documentation
EXPOSE 443
CMD [ "nginx", "-g", "daemon off;" ]