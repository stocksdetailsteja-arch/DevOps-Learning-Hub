# Ansible Commands

## Version

ansible --version

## Inventory Check

ansible-inventory --list

## Connectivity Test

ansible all -m ping

## Gather Facts

ansible all -m setup

## Syntax Check

ansible-playbook playbooks/site.yml --syntax-check

## Dry Run

ansible-playbook playbooks/site.yml --check

## Execute Playbook

ansible-playbook playbooks/site.yml

## Execute Specific Inventory

ansible-playbook \
-i inventories/dev/hosts.ini \
playbooks/site.yml

## Verbose Execution

ansible-playbook playbooks/site.yml -vvv

## Show Hosts

ansible all --list-hosts

## Encrypt Variable

ansible-vault encrypt secrets.yml

## View Encrypted File

ansible-vault view secrets.yml
