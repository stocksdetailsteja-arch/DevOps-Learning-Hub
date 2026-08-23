# Day 05 - Grafana Commands

## Download Grafana Repository

sudo apt-get install -y software-properties-common

## Add Grafana Repository

sudo apt-get install -y apt-transport-https

## Install Grafana

sudo apt install grafana -y

## Start Grafana

sudo systemctl start grafana-server

## Enable Grafana

sudo systemctl enable grafana-server

## Check Status

sudo systemctl status grafana-server

## Verify Port

ss -tulpn | grep 3000

## Access Grafana

http://SERVER-IP:3000

## Restart Grafana

sudo systemctl restart grafana-server

## View Logs

journalctl -u grafana-server

## Verify Service

systemctl is-active grafana-server
