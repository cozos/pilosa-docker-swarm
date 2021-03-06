#!/usr/bin/env sh

./pilosa server \
    --cluster.coordinator=true \
    --cluster.replicas=3 \
    --bind=0.0.0.0:10101 \
    --advertise=`hostname -i`:10101 \
    --gossip.advertise-host=`hostname -i` \
    --gossip.advertise-port=11101 \
    --gossip.port=11101 \
    --data-dir=/opt/pilosa/data
