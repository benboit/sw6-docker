#!/bin/sh

MACUSERID=$(ls -ld /var/www | awk '{print $3}')
usermod -u $MACUSERID 83
groupmod -g 9999 dialout
groupmod -g 20 www-data

php-fpm7 -F
