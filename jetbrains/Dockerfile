FROM imhuwq/ubuntu
MAINTAINER imhuwq "imhuwq@gmail.com"

RUN mkdir -p /data/jetbrains
ADD lserver /data/jetbrains

WORKDIR /data/jetbrains

EXPOSE 8888

CMD ["./lserver", "-u", "xmen", "-p", "8888", "-prolongationPeriod", "300000"]
