FROM nginx:1.14-alpine

LABEL Benjamin Boit benboit@posteo.de

RUN apk update && apk add --no-cache gettext && rm -rf /var/cache/apk/* 

# remove default host
RUN rm /etc/nginx/conf.d/default.conf

ADD nginx.crt /etc/nginx/ssl/nginx.crt
ADD nginx.key /etc/nginx/ssl/nginx.key

ADD nginx.conf /usr/src/nginx.conf.envsubst
ADD shopware.conf /usr/src/php.conf.envsubst

ADD run.sh /run.sh

CMD ["/run.sh"]
