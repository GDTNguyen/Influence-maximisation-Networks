#!/bin/bash

docker build -t influencemaximisation -f config/influencemaximisation.Dockerfile .
docker run -ti -v ${PWD}:/usr/local/bin/influencemaximisation -p 8888:8888 influencemaximisation