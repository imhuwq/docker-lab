# Version: 0.0.1
FROM imhuwq/ubuntu_base:16.04
MAINTAINER imhuwq "imhuwq@gmail.com"
RUN apt update
RUN apt install -y nginx
RUN echo 'Hi, I am in your container' > /usr/share/nginx/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]
