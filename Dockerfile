FROM debian:buster

RUN apt update && apt -y upgrade && \
apt -y install vim wget nginx default-mysql-server openssl php7.3 php7.3-fpm php7.3-mysql php7.3-xml

RUN wget -P /tmp/srcs/ https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz \
https://wordpress.org/latest.tar.gz

COPY ./srcs/ /tmp/srcs/

EXPOSE 80 443

ENTRYPOINT [ "bash", "/tmp/srcs/init.sh" ]