# Day 06 - AlertManager Commands

## Download AlertManager

wget https://github.com/prometheus/alertmanager/releases/latest/download/alertmanager-linux-amd64.tar.gz

## Extract Package

tar -xvf alertmanager-linux-amd64.tar.gz

## Enter Directory

cd alertmanager-*

## Verify Version

./alertmanager --version

## Start AlertManager

./alertmanager

## Check Process

ps -ef | grep alertmanager

## Check Port

ss -tulpn | grep 9093

## View AlertManager UI

http://SERVER-IP:9093

## Validate Configuration

./amtool check-config alertmanager.yml

## Reload Configuration

kill -HUP <PID>

## View Active Alerts

Open AlertManager UI

## Check Service Status

systemctl status alertmanager

## Restart Service

systemctl restart alertmanager
