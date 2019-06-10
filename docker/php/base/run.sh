#!/bin/sh

# change user-id of php to the local one
LOCALUSERID=$(ls -ld /var/www | awk '{print $3}')
usermod -u $LOCALUSERID php

# hacks for mac-osx (static)
groupmod -g 9999 dialout
groupmod -g 20 www-data

php-fpm7 -F
