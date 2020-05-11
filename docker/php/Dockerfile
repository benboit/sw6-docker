ARG ALPINE_VERSION=3.11
FROM alpine:$ALPINE_VERSION

LABEL Benjamin Boit benboit@posteo.de

RUN apk update && \
    apk add --no-cache shadow && \
    apk add --no-cache mysql-client && \
    apk add --no-cache php7-pecl-redis && \
    apk add --no-cache php7 && \
    apk add --no-cache php7-common && \
    apk add --no-cache php7-xsl && \
    apk add --no-cache php7-xml && \
    apk add --no-cache php7-xmlreader && \
    apk add --no-cache php7-xmlwriter && \
    apk add --no-cache php7-tokenizer && \
    apk add --no-cache php7-simplexml && \
    apk add --no-cache php7-zip && \
    apk add --no-cache php7-pdo && \
    apk add --no-cache php7-pdo_mysql && \
    apk add --no-cache php7-openssl && \
    apk add --no-cache php7-opcache && \
    apk add --no-cache php7-iconv && \
    apk add --no-cache php7-mbstring && \
    apk add --no-cache php7-intl && \
    apk add --no-cache php7-gd && \
    apk add --no-cache php7-curl && \
    apk add --no-cache php7-fileinfo && \
    apk add --no-cache php7-json && \
    apk add --no-cache php7-fpm && \
    apk add --no-cache php7-phar && \
    apk add --no-cache php7-ctype && \
    rm -rf /var/cache/apk/* && \
    adduser www-data --gecos "" --disabled-password && \
    usermod -g www-data www-data && \
    mkdir -p /run/php && touch /run/php/php7.0-fpm.pid && \
    sed -i 's/127.0.0.1:9000/9000/g' /etc/php7/php-fpm.d/www.conf && \
    sed -i 's/user = nobody/user = www-data/g' /etc/php7/php-fpm.d/www.conf && \
    sed -i 's/group = nobody/group = www-data/g' /etc/php7/php-fpm.d/www.conf

ADD run.sh /run.sh

VOLUME ["/var/www"]

EXPOSE 9000

CMD ["/run.sh"]
