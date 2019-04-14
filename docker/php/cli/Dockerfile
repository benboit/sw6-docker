FROM benboit/sw6-docker-php:7.2

LABEL Benjamin Boit benboit@posteo.de

# install bash
RUN apk update --no-cache && \
    apk add --no-cache bash && \
    rm -rf /var/cache/apk/*

# install composer globally
RUN wget https://getcomposer.org/composer.phar && \
    chmod +x composer.phar && \
    mv composer.phar /usr/bin/composer

# install node
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    apk update --no-cache && \
    apk add --repository edge --no-cache npm@edge nodejs-current@edge && \
    rm -rf /var/cache/apk/*