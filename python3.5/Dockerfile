FROM imhuwq/dev-pack
MAINTAINER imhuwq "imhuwq@gmail.com"

RUN apt update -y
RUN apt install -y build-essential checkinstall
RUN apt install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

WORKDIR /tmp
RUN wget http://mirrors.sohu.com/python/3.5.3/Python-3.5.3.tgz
RUN tar -xzvf Python-3.5.3.tgz

WORKDIR /tmp/Python-3.5.3
RUN ./configure
RUN make install
RUN ln -s /usr/local/bin/python3 /usr/bin/python
RUN ln -s /usr/local/bin/pip3 /usr/bin/pip
WORKDIR /root

CMD /usr/bin/python
