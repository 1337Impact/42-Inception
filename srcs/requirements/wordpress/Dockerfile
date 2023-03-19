FROM debian:buster

RUN apt-get update && apt-get install\
    php php-curl php-mysql\
    php7.3-fpm curl -y

WORKDIR /var/www/html

COPY requirements/wordpress/tools/install_wp.sh /tmp/install_wp.sh

RUN mkdir -p /run/php/

RUN chmod +x /tmp/install_wp.sh

CMD /tmp/install_wp.sh; mr /tmp/install_wp.sh; php-fpm7.3 --nodaemonize