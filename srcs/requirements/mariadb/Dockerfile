FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server 

COPY requirements/mariadb/tools/create_db.sh /tmp/script.sh

expose 3306

RUN chmod +x /tmp/script.sh

CMD /tmp/script.sh; mysqld