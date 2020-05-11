#!/bin/sh

docker build -t benboit/sw6-docker-nginx:1.14 nginx
docker build --build-arg ALPINE_VERSION=3.9 -t benboit/sw6-docker-php:7.2 php
docker build --build-arg ALPINE_VERSION=3.11 -t benboit/sw6-docker-php:7.3 php

docker push benboit/sw6-docker-nginx:1.14
docker push benboit/sw6-docker-php:7.2
docker push benboit/sw6-docker-php:7.3
