#!/bin/bash

sudo docker rm -f dev-pack
sudo docker run -it \
		--name dev-pack \
		imhuwq/dev-pack /bin/bash
