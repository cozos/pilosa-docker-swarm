#!/usr/bin/env sh

pilosa server \
    --cluster.coordinator=true \
    --bind=0.0.0.0:10101 \
    --gossip.advertise-host=`hostname -i` \
    --gossip.advertise-port=15001 \
    --gossip.port=11101 \
    --data-dir=/opt/pilosa/data
