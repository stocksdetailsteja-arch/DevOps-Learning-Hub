# Day 04 - Playbooks Commands

## Execute Playbook

ansible-playbook playbook.yml

## Execute Using Inventory

ansible-playbook -i inventory playbook.yml

## Check Syntax

ansible-playbook --syntax-check playbook.yml

## Dry Run

ansible-playbook --check playbook.yml

## Show Changes

ansible-playbook --diff playbook.yml

## Run Specific Tag

ansible-playbook playbook.yml --tags install

## Skip Tag

ansible-playbook playbook.yml --skip-tags deploy

## Run With Extra Variables

ansible-playbook playbook.yml -e "pkg=nginx"

## Show Hosts

ansible-playbook playbook.yml --list-hosts

## Show Tasks

ansible-playbook playbook.yml --list-tasks

## Increase Verbosity

ansible-playbook playbook.yml -v

ansible-playbook playbook.yml -vv

ansible-playbook playbook.yml -vvv

ansible-playbook playbook.yml -vvvv
