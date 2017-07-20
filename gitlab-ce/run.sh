#!/bin/bash

sudo docker rm -f gitlab-ce

sudo docker run --detach \
    --hostname gitlab.aonely.com \
    --publish 9943:443 --publish 9980:80 --publish 9922:22 \
    --name gitlab-ce \
    --restart always \
    --env 'GITLAB_SHELL_SSH_PORT=9922' \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest

sudo docker logs -f gitlab-ce
