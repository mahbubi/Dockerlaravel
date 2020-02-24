FROM nginx:1.15.11

ADD ./vhost.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www
