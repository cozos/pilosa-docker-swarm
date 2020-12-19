FROM pilosa/pilosa:latest

COPY entrypoint_leader.sh /entrypoint_leader.sh
COPY entrypoint_workers.sh /entrypoint_workers.sh
