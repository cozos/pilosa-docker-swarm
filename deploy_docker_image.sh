#!/usr/bin/env bash

aws ecr get-login --no-include-email --region us-west-2 | bash

docker build -t "771945457201.dkr.ecr.us-west-2.amazonaws.com/audience-pilosa:latest" -f Dockerfile .
docker push 771945457201.dkr.ecr.us-west-2.amazonaws.com/audience-pilosa:latest
