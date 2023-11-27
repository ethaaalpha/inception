FROM debian:bookworm

# install apt's needed
RUN apt update && apt upgrade
RUN apt install -y nginx
RUN apt install -y openssl

# about the TLS 2.0
# create certificate for https
RUN mkdir -p /etc/ssl/private/nginx/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-keyout ${CERTIFICATE_KEY} \
		-out ${CERTIFICATE_CRT} \
		-subj "/C=${COUNTRY}/ST=${STATE}/L=${CITY}/O=${ORGANIZATION}/CN=${DOMAIN_NAME}"

# erase old config and copy the new one
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# expose the port 443 used by https
EXPOSE 443
CMD [ "nginx", "-g", "daemon off;" ]