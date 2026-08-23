# Ansible Commands Cheat Sheet

## Check Version

ansible --version

## Inventory

ansible-inventory --list

ansible-inventory --graph

## List Hosts

ansible all --list-hosts

## Test Connectivity

ansible all -m ping

## Gather Facts

ansible all -m setup

## Ad-Hoc Command

ansible all -m command -a "uptime"

## Check Disk Usage

ansible all -m command -a "df -h"

## Check Memory

ansible all -m command -a "free -h"

## Execute Playbook

ansible-playbook site.yml

## Execute With Inventory

ansible-playbook -i inventory.ini site.yml

## Syntax Check

ansible-playbook site.yml --syntax-check

## Check Mode

ansible-playbook site.yml --check

## Check + Diff

ansible-playbook site.yml --check --diff

## Verbose Mode

ansible-playbook site.yml -vvv

## Very Verbose

ansible-playbook site.yml -vvvv

## Limit Hosts

ansible-playbook site.yml --limit web01

## Run Tags

ansible-playbook site.yml --tags nginx

## Skip Tags

ansible-playbook site.yml --skip-tags database

## List Tasks

ansible-playbook site.yml --list-tasks

## List Tags

ansible-playbook site.yml --list-tags

## Start At Task

ansible-playbook site.yml \
--start-at-task "Install Nginx"

## Vault Encrypt

ansible-vault encrypt secrets.yml

## Vault View

ansible-vault view secrets.yml

## Vault Edit

ansible-vault edit secrets.yml

## Vault Decrypt

ansible-vault decrypt secrets.yml

## Create Role

ansible-galaxy role init nginx

## Install Role

ansible-galaxy role install \
-r requirements.yml
