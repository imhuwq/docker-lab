FROM ubuntu:16.04
MAINTAINER imhuwq "imhuwq@gmail.com"

COPY sources.list /etc/apt/sources.list
ENV LC_ALL C.UTF-8

RUN apt-get update && \

# 一些常用工具包
    apt-get install -y lsb-core net-tools dnsutils iputils-ping iftop htop telnet sudo openssh-server curl wget git vim locate && \

# 一些常用基础库
    apt-get install -y libssl-dev && \

# 一些常用的工具链
    apt-get install -y checkinstall build-essential cmake gdb gdbserver && \

# 从源码安装 python 3.5.3
#_bz2                _curses           _curses_panel
#_dbm                _gdbm             _lzma
#_sqlite3            _tkinter          readline
    apt-get install -y libbz2-dev libncursesw5-dev libgdbm-dev liblzma-dev libsqlite3-dev tk-dev libreadline-dev && \
    cd /tmp && wget http://mirrors.sohu.com/python/3.5.3/Python-3.5.3.tgz && \
    tar -xzvf Python-3.5.3.tgz && cd /tmp/Python-3.5.3 && \
    ./configure --prefix="/usr/local" --enable-shared LDFLAGS="-Wl,--rpath=/usr/local/lib" && \
    make -j 6 && make install && \

# 从源码安装 python 2.7.12
#_bsddb             _curses            _curses_panel
#_sqlite3           _tkinter           readline
#bz2                dbm                gdbm
# sunaudiodev and bsddb185 and dl and imageop are ignored
    apt-get install -y libbz2-dev libncursesw5-dev libgdbm-dev liblzma-dev libsqlite3-dev tk-dev libreadline-dev libdb-dev && \
    cd /tmp && wget http://mirrors.sohu.com/python/2.7.12/Python-2.7.12.tgz && \
    tar -xzvf Python-2.7.12.tgz && cd /tmp/Python-2.7.12 && \
    ./configure --prefix="/usr/local" --with-ensurepip=install --enable-unicode=ucs4 && \
    make -j 6 && make install && \

# 清理工作
    apt-get autoremove && \

# 创建 deploy 用户
    echo "#!/bin/bash\nadduser deploy << EOF\n11235813Deploy\n11235813Deploy\ndeploy\n\n\n\nY\nEOF" >> create_deploy.sh && \
    chmod 755 create_deploy.sh && ./create_deploy.sh && gpasswd -a deploy sudo && rm create_deploy.sh

ADD pip.conf /home/deploy/.pip/pip.conf
RUN chown -R deploy:deploy /home/deploy/.pip

WORKDIR /home/deploy
USER deploy
