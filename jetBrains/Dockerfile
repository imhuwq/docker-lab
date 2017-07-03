FROM imhuwq/ubuntu_base:16.04
MAINTAINER imhuwq "imhuwq@gmail.com"

RUN mkdir -p /jetBrains
ADD lserver /jetBrains

WORKDIR /jetBrains

EXPOSE 8888

CMD ["./lserver", "-u", "xmen", "-p", "8888", "-prolongationPeriod", "300000"]
