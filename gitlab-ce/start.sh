#!/bin/bash

sudo docker start gitlab-ce

sudo docker logs -f gitlab-ce
