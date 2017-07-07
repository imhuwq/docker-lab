#!/bin/bash

sudo docker rm -f ubuntu
sudo docker run -it --name ubuntu --dns=223.5.5.5 imhuwq/ubuntu /bin/bash
