# Day 02 - Prometheus Commands

## Download Prometheus

wget https://github.com/prometheus/prometheus/releases/latest/download/prometheus-linux-amd64.tar.gz

## Extract Package

tar -xvf prometheus-linux-amd64.tar.gz

## Enter Directory

cd prometheus-*

## Verify Version

./prometheus --version

## Start Prometheus

./prometheus

## Access Web UI

http://localhost:9090

## Check Running Process

ps -ef | grep prometheus

## Check Listening Port

ss -tulpn | grep 9090

## Validate Configuration

./prometheus --config.file=prometheus.yml

## View Targets

Open:

Status

↓

Targets

## View Metrics

Open:

http://localhost:9090/metrics

## Stop Process

pkill prometheus
``
