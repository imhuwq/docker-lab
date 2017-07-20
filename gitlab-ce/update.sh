#!/bin/bash

sudo docker stop gitlab-ce
sudo docker rm gitlab-ce
sudo docker pull gitlab/gitlab-ce:latest

