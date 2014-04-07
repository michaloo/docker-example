FROM michaloo/docker-example:base

# install composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# install xdebug extension
RUN apt-get install -y php5-xdebug && \
    apt-get clean

ENTRYPOINT ["/bin/bash"]