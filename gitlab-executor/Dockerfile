FROM imhuwq/ubuntu
MAINTAINER imhuwq "imhuwq@gmail.com"

RUN apt install -y net-tools dnsutils iputils-ping iftop
RUN apt install -y curl wget git

RUN echo "172.17.0.3    gitlab.aonely.com gitlab gitlab-ce" >> /etc/hosts
