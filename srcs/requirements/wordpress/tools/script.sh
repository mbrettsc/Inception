#!/bin/bash

wget http://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
mv wordpress/* .
rm -rf latest.tar.gz
rm -rf wordpress

sed -i "s/username_here/$MYSQL_USER/g" wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config-sample.php
sed -i "s/localhost/$MYSQL_HOSTNAME/g" wp-config-sample.php
sed -i "s/database_name_here/$MYSQL_DB_NAME/g" wp-config-sample.php
mv wp-config-sample.php wp-config.php

wp core install --url=$DOMAIN_NAME --title=Inception --admin_user=$MYSQL_USER --admin_password=$MYSQL_PASSWORD --admin_email=mbrettsc@student.42kocaeli.com.tr --allow-root
wp theme install hestia --activate --allow-root

exec "$@"
