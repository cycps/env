#!/usr/bin/env bash

DOCKER_IP=172.17.42.1

docker run -it \
  -v /var/run/docker.sock:/tmp/docker.sock \
  -h $DOCKER_IP gliderlabs/registrator \
  consul://$DOCKER_IP:8500
