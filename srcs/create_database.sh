#!/bin/sh
service mysql start
mysql -uroot <<MYSQL_SCRIPT
    CREATE USER 'ft_server'@'localhost' identified by 'Wdx49DpR5mv9sWdpsS8M';
    CREATE DATABASE ft_server;
    GRANT ALL PRIVILEGES ON ft_server.* TO 'ft_server'@'localhost';
    FLUSH PRIVILEGES;
MYSQL_SCRIPT