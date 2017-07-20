#!/bin/bash

sudo docker rm -f gitlab-runner

sudo docker run --detach \
    --name gitlab-runner \
    --restart always \
    --link gitlab-ce:gitlab.aonely.com \
    -v /srv/gitlab-runner/config:/etc/gitlab-runner \
    -v /var/run/docker.sock:/var/run/docker.sock \
    gitlab/gitlab-runner:latest

sudo docker logs -f gitlab-runner
