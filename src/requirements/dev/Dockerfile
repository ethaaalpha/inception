FROM debian:bullseye

RUN apt update && apt upgrade

# maria db
RUN apt install -y mariadb-client

CMD ["tail", "-f", "/dev/null"]