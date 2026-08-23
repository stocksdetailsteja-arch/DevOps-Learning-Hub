# Day 10 - Real World Ansible Project Commands

## Verify AWS Identity

aws sts get-caller-identity

## Verify Inventory

ansible all -i inventory -m ping

## Install Docker

sudo apt install docker.io -y

## Verify Docker

docker --version

## Run Container

docker run -d nginx

## Verify Container

docker ps

## Execute Complete Project

ansible-playbook -i inventory site.yml

## Execute With Vault

ansible-playbook -i inventory site.yml --ask-vault-pass

## Verify Nginx

systemctl status nginx

## Verify Docker Service

systemctl status docker

## Verify Application

curl localhost

## Check Listening Ports

ss -tulpn

## Validate Inventory

ansible-inventory -i inventory --list

## Jenkins Service

systemctl status jenkins

## Node Exporter Status

systemctl status node_exporter

## Debug Execution

ansible-playbook site.yml -vvvv
