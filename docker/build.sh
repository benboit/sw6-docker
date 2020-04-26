#!/bin/sh

docker build -t benboit/sw6-docker-nginx:1.14 nginx && 
docker build -t benboit/sw6-docker-php:7.3 php/base
docker build -t benboit/sw6-docker-php:7.3-cli php/cli

docker push benboit/sw6-docker-nginx:1.14
docker push benboit/sw6-docker-php:7.3
docker push benboit/sw6-docker-php:7.3-cli
