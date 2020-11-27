#!/bin/bash

# logstash
. ./.env
cd ./logstash
docker build -t besu_logstash:latest .

cd ../filebeat
docker build -t besu_filebeat:latest .

cd ../metricbeat
docker build -t besu_metricbeat:latest .

cd ../elasticsearch
docker build -t besu_elasticsearch:latest .

cd ../block-explorer-light
docker build -t quorum-dev-quickstart/block-explorer-light:develop .


cd ..

docker pull redis:alpine
docker pull hyperledger/besu:20.10.0
docker pull consensys/quorum-ethsigner:20.10.0
docker pull docker.elastic.co/kibana/kibana:7.9.3








