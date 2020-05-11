#!/bin/sh

# change www-data-user and www-data-group id to volume mapped id
CURRENT_USERID=$(ls -ld /var/www | awk '{print $3}')
CURRENT_GROUPID=$(ls -ld /var/www | awk '{print $4}')
usermod -u $CURRENT_USERID www-data
groupmod -g $CURRENT_GROUPID www-data

php-fpm7 -F
