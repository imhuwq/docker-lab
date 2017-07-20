#!/bin/bash

sudo docker rm -f gitlab-executor
sudo docker run --name gitlab-executor -it imhuwq/gitlab-executor /bin/bash
