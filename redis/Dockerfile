FROM imhuwq/ubuntu_base:16.04
MAINTAINER imhuwq "imhuwq@gmail.com"
ENV REFRESHED_AT 2017-06-27
RUN apt update
RUN apt -y install redis-server redis-tools
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
