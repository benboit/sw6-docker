#!/bin/sh

export DOLLAR='$'

envsubst < /usr/src/nginx.conf.envsubst > /etc/nginx/nginx.conf
envsubst < /usr/src/shopware.conf.envsubst > /etc/nginx/shopware.conf

nginx -g "daemon off;"
