FROM nginx:1.14-alpine

LABEL Benjamin Boit benboit@posteo.de

# remove default host
RUN rm /etc/nginx/conf.d/default.conf

ADD nginx.crt /etc/nginx/ssl/nginx.crt
ADD nginx.key /etc/nginx/ssl/nginx.key

ADD nginx.conf /etc/nginx/nginx.conf
ADD shopware.conf /etc/nginx/shopware.conf

ADD run.sh /run.sh

CMD ["/run.sh"]
