# Day 02 - Docker Installation Commands

## Update Packages

sudo apt update

Screenshot:

01_apt_update.png

## Upgrade Packages

sudo apt upgrade -y

Screenshot:

02_apt_upgrade.png

## Install Docker

sudo apt install docker.io -y

Screenshot:

03_docker_installation.png

## Verify Docker Version

docker --version

Screenshot:

04_docker_version.png

## Verify Docker Service

sudo systemctl status docker

Screenshot:

05_docker_service.png

## Start Docker Service

sudo systemctl start docker

Screenshot:

06_docker_start.png

## Enable Docker Service

sudo systemctl enable docker

Screenshot:

07_docker_enable.png

## Verify Docker Information

docker info

Screenshot:

08_docker_info.png

## Verify Docker Process

ps -ef | grep docker

Screenshot:

09_docker_process.png

## Verify Docker Installation

sudo docker run hello-world

Screenshot:

10_hello_world.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
