#!/bin/bash

echo "connecting to server, docker pull and run docker container"

ssh -T devops@192.168.31.164  "docker pull free1as2bird/devopstask1:latest && docker run --hostname=7c540686e618 --env=PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin -p 8080:8080 --label='Name=devopstask1' --runtime=runc -d free1as2bird/devopstask1:latest"
