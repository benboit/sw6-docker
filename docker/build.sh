#!/bin/sh

docker build -t benboit/sw6-docker-nginx:1.14 nginx && 
docker build -t benboit/sw6-docker-php:7.2 php/base

docker push benboit/sw6-docker-nginx:1.14
docker push benboit/sw6-docker-php:7.2
