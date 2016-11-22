#!/bin/sh
apk update
apk add --upgrade alpine-sdk

apk add docker
rc-update add docker boot
service docker start
adduser vagrant docker

apk add py-pip
pip install docker-compose
pip install --upgrade pip
