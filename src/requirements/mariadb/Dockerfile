FROM debian:bullseye

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_PASSWORD_ROOT

# SELECT user, host FROM mysql.user;

# basic setup
RUN apt update && apt upgrade

# maria db
RUN apt install -y mariadb-server

RUN service mariadb start \ && mysql -u root -e	"CREATE DATABASE IF NOT EXISTS ${DB_NAME}; \
												ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_PASSWORD_ROOT}'; \
												CREATE USER ${DB_USER}@'%' IDENTIFIED BY '${DB_PASSWORD}'; \
												GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"

EXPOSE 3306
# if not bind_address can't connect from others containers
CMD ["mariadbd", "--user=root", "--bind_address=0.0.0.0"]
