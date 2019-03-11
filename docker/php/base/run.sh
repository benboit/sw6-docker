#!/bin/sh

LOCALUSERID=$(ls -ld /var/www | awk '{print $3}')
usermod -u $LOCALUSERID php
#groupmod -g 9999 dialout
#groupmod -g 20 www-data

php-fpm7 -F
