FROM imhuwq/ubuntu_base:16.04
MAINTAINER imhuwq "imhuwq@gmail.com"
ENV REFRESHED_AT 2017-06-27
RUN apt update
RUN apt -y -q install nginx
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
