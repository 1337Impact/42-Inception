FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server 

COPY requirements/mariadb/tools/create_db.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

CMD /tmp/script.sh; rm /tmp/script.sh; mysqld