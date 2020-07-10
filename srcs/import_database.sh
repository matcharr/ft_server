#!/bin/sh
service mysql start
mysql -uroot -h localhost ft_server < ft_server.sql