FROM imhuwq/ubuntu_base:16.04
MAINTAINER imhuwq "imhuwq@gmail.com"
ENV REFRESHED_AT 2017-06-27

RUN apt update
RUN apt -y install wget apt-transport-https curl
RUN wget  https://get.docker.io/gpg
RUN apt-key add gpg
RUN echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt update
RUN apt install -qqy iptables ca-certificates lxc openjdk-8-jdk git-core lxc-docker

ENV JENKINS_HOME /opt/jenkins/data
ENV JENKINS_MIRROR http://mirrors.jenkins-ci.org

RUN mkdir -p $JENKINS_HOME/plugins
RUN curl -sf -o /opt/jenkins/jenkins.war -L $JENKINS_MIRROR/war-stable/latest/jenkins.war

RUN for plugin in chuncknorris greenballs scm-api git-client git ws-cleanup ;\
    do curl -sf -o o $JENKINS_HOME/plugins/${plugin}.hpi \
        -L $JENKINS_MIRROR/plugins/${plugin}/latest/${plugin}.hpi; done

ADD ./dockerjenkins.sh /usr/local/bin/dockerjenkins.sh
RUN chmod +x /usr/local/bin/dockerjenkins.sh

VOLUME /var/lib/docker

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/dockerjenkins.sh"]
