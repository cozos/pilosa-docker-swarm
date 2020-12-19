#!/usr/bin/env sh

apk update
apk add bind-tools

MY_HOSTNAME=`hostname -i`

# for NODE in $(dig +short pilosa-workers); do
#     if [[ $NODE != $MY_HOSTNAME ]]; then
#       OTHER_WORKER_HOSTNAME=$NODE
#       break
#     fi
# done

./pilosa server \
    --cluster.coordinator=true \
    --bind=0.0.0.0:10101 \
    --gossip.seeds=pilosa-leader:11101 \
    --gossip.advertise-host=$MY_HOSTNAME \
    --gossip.advertise-port=11101 \
    --gossip.port=11101 \
    --data-dir=/opt/pilosa/data
