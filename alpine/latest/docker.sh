#!/bin/sh
apk update

apk add docker
rc-update add docker boot
service docker start
adduser vagrant docker

apk add py-pip
pip install docker-compose
