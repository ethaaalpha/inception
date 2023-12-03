FROM debian:bookworm

# basic setup
RUN apt update && apt upgrade

# maria db
RUN apt install -y mariadb-server
# to start the mariadb service (this will creates the files needed cause 'mariadb' doesn't)
RUN service mariadb start

EXPOSE 3306
CMD ["mariadbd", "--user=root"]