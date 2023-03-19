#!bin/bash

service mysql start

sleep 2

sed -i 's/bind-address            = 127.0.0.1/bind-address = 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i 's/#port/port/' /etc/mysql/mariadb.conf.d/50-server.cnf

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

mysql -u root -e "GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS' WITH GRANT OPTION;"

mysql -u root -e "FLUSH PRIVILEGES;"

# service mysql stop