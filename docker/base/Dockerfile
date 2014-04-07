FROM ubuntu:12.04

# set home directory
WORKDIR /root
ENV HOME /root

# install basic deps
RUN apt-get update && apt-get install -y \
    curl \
    git \
    supervisor && \
    apt-get clean

# install php stuff
RUN echo "deb http://ppa.launchpad.net/ondrej/php5/ubuntu precise main" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E5267A6C && \
    apt-get update && apt-get install -y \
    php5-cli \
    php-pear \
    php5-curl \
    php-apc \
    php5-fpm && \
    apt-get clean

# install nginx
RUN echo "deb http://ppa.launchpad.net/nginx/development/ubuntu precise main" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C && \
    apt-get update && apt-get install -y \
    nginx && \
    apt-get clean

EXPOSE 80
