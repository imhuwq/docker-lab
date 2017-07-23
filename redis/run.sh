#!/bin/bash

sudo docker rm -f redis
sudo docker run --detach \
                --name redis \
                --restart always \
                redis

sudo  docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' redis
