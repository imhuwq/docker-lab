FROM imhuwq/ubuntu_base:16.04
MAINTAINER imhuwq "imhuwq@gmail.com"
ENV REFRESHED_AT 2017-06-28

RUN apt -yqq update
RUN apt -yqq install ruby ruby-dev make nodejs make build-essential
RUN gem install --no-rdoc --no-ri jekyll

VOLUME ["/data/", "/var/www/html"]
WORKDIR /data

ENTRYPOINT ["jekyll", "build", "--destination=/var/www/html"]
