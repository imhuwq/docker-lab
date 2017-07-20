#!/bin/bash

sudo docker stop gitlab-runner
sudo docker rm gitlab-runner
sudo docker pull gitlab/gitlab-runner:latest

