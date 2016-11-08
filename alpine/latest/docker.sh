#!/bin/sh
apk update

apk add docker
rc-update add docker boot
service docker start
adduser vagrant docker

apk add py-pip
pip install docker-compose

apk add nfs-utils
rc-update add nfs boot
rc-update add netmount
rc-service nfs start
rc-service netmount start
