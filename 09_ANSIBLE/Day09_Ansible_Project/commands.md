# Day 09 - Ansible Project Commands

## Verify Inventory

ansible all -i inventory -m ping

## Execute Project Playbook

ansible-playbook -i inventory site.yml

## Execute With Vault

ansible-playbook -i inventory site.yml --ask-vault-pass

## Syntax Validation

ansible-playbook --syntax-check site.yml

## Dry Run

ansible-playbook site.yml --check

## Show Changes

ansible-playbook site.yml --diff

## View Inventory

ansible-inventory -i inventory --list

## Verify Nginx

systemctl status nginx

## Verify Web Page

curl localhost

## Verify AWS Identity

aws sts get-caller-identity

## Debug Mode

ansible-playbook site.yml -vvv

## View Open Ports

ss -tulpn

## Verify EC2 Connectivity

ssh ubuntu@PUBLIC_IP

