# Day 05 - Roles And Reusable Configurations Commands

## Create Role Using Ansible

ansible-galaxy init nginx_role

## View Role Structure

tree nginx_role

## Execute Role Via Playbook

ansible-playbook site.yml

## Execute With Inventory

ansible-playbook -i inventory site.yml

## Syntax Validation

ansible-playbook --syntax-check site.yml

## Dry Run

ansible-playbook --check site.yml

## List Tasks

ansible-playbook site.yml --list-tasks

## List Hosts

ansible-playbook site.yml --list-hosts

## Verbose Execution

ansible-playbook site.yml -v

ansible-playbook site.yml -vv

ansible-playbook site.yml -vvv

## Install Role From Galaxy

ansible-galaxy install geerlingguy.nginx

## List Installed Roles

ansible-galaxy role list

## Remove Role

rm -rf ~/.ansible/roles/role_name
