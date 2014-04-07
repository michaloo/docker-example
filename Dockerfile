FROM michaloo/docker-example:base

ADD config/prod/nginx      /etc/nginx
ADD config/prod/php5       /etc/php5
ADD config/prod/supervisor /etc/supervisor

ADD ./src /app/src

ENTRYPOINT ["/usr/bin/supervisord"]