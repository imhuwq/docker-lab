#!/bin/bash

sudo docker rm -f python35
sudo docker run -it --name python35 imhuwq/python35 /bin/bash
