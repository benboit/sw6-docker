FROM benboit/sw6-docker-php:7.2

LABEL Benjamin Boit benboit@posteo.de

# install bash and git
RUN apk update --no-cache && \
    apk add --no-cache bash && \
    apk add --no-cache git && \
    rm -rf /var/cache/apk/*

# install composer globally
RUN wget https://getcomposer.org/composer.phar && \
    chmod +x composer.phar && \
    mv composer.phar /usr/bin/composer

# install node
RUN NODE_VERSION="v12.3.1" && \
    apk add --update --no-cache curl \
    make \
    python \
    g++ \
    gcc \
    gcc-doc \
    linux-headers && \
  curl -L -O https://nodejs.org/dist/v12.3.1/node-$NODE_VERSION.tar.gz && \
  tar xzf node-$NODE_VERSION.tar.gz && \
  cd node-$NODE_VERSION && \
  ./configure && \
  make && \
  make install && \
  cd .. && rm -rf node-$NODE_VERSION.tar.gz node-$NODE_VERSION