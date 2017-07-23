#!/bin/bash

sudo docker rm -f postgres
sudo docker run --detach \
                --name postgres \
                --restart always \
                --env POSTGRES_PASSWORD=postgres11235813 \
                postgres

sudo  docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' postgres
