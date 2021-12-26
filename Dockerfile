FROM ubuntu:18.04
LABEL maintainer="konova@novaitg.com"
ENV REFRESHED_AT 2021-12-12
RUN apt-get -yqq update; apt-get -yqq install nginx
RUN mkdir -p /var/www/html/web
ADD global.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
