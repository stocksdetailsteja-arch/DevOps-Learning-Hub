# Day 03 - Node Exporter Commands

## Download Node Exporter

wget https://github.com/prometheus/node_exporter/releases/latest/download/node_exporter-linux-amd64.tar.gz

## Extract Archive

tar -xvf node_exporter-linux-amd64.tar.gz

## Enter Directory

cd node_exporter-*

## Verify Files

ls -l

## Start Node Exporter

./node_exporter

## Check Process

ps -ef | grep node_exporter

## Check Port

ss -tulpn | grep 9100

## View Metrics

curl localhost:9100/metrics

## Check Node Exporter Endpoint

http://SERVER-IP:9100/metrics

## Restart Service

sudo systemctl restart node_exporter

## Check Service Status

sudo systemctl status node_exporter

## Enable Service

sudo systemctl enable node_exporter
