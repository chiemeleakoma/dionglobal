#!/bin/bash

# build image and tag
docker build -t duoarc/dionglobal .

# pause for 5 secs
sleep 5

# push image to docker hub
docker push duoarc duoarc/dionglobal:latest


