#!/bin/bash

sudo docker rm -f dev-pack
sudo docker run --name dev-pack -it imhuwq/dev-pack /bin/bash
