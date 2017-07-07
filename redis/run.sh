#!/bin/bash

sudo docker rm -f redis
sudo docker run -d --name redis imhuwq/redis
