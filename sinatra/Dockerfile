FROM imhuwq/ubuntu_base:16.04
MAINTAINER imhuwq "imhuwq@gmail.com"
ENV REFRESHED_AT 2017-06-27

RUN apt update
RUN apt -y install ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD ["/opt/webapp/bin/webapp"]
