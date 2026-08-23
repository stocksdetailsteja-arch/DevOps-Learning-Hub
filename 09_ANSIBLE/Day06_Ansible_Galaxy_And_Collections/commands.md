# Day 06 - Ansible Galaxy And Collections Commands

## Search Galaxy Role

ansible-galaxy search nginx

## Install Galaxy Role

ansible-galaxy install geerlingguy.nginx

## Install Specific Version

ansible-galaxy install geerlingguy.nginx,3.1.0

## List Installed Roles

ansible-galaxy role list

## Remove Installed Role

rm -rf ~/.ansible/roles/geerlingguy.nginx

## Install Collection

ansible-galaxy collection install amazon.aws

## Install Kubernetes Collection

ansible-galaxy collection install kubernetes.core

## Install Docker Collection

ansible-galaxy collection install community.docker

## List Installed Collections

ansible-galaxy collection list

## Install Requirements File

ansible-galaxy install -r requirements.yml

## Verify Collection

ansible-doc amazon.aws.ec2_instance

## Display Collection Information

ansible-galaxy collection list

## Upgrade Collection

ansible-galaxy collection install amazon.aws --force

## Execute Playbook Using Collection

ansible-playbook site.yml
