#!/bin/bash

sudo docker rm -f python3.5
sudo docker run -it --name python3.5 imhuwq/python3.5 /bin/bash
