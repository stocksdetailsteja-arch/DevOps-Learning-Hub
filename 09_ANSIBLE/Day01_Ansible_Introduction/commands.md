# Day 01 - Ansible Introduction Commands

## Verify Python Version

python3 --version

Screenshot:

01_python_version.png

## Update Ubuntu

sudo apt update

Screenshot:

02_apt_update.png

## Install Ansible

sudo apt install ansible -y

Screenshot:

03_ansible_installation.png

## Verify Installation

ansible --version

Screenshot:

04_ansible_version.png

## Display Help

ansible --help

Screenshot:

05_ansible_help.png

## Check Inventory

ansible-inventory --list

Screenshot:

06_inventory_list.png

## View Config File

ansible-config dump

Screenshot:

07_config_dump.png

## Check Hosts

ansible all --list-hosts

Screenshot:

08_list_hosts.png

## Verify SSH Connectivity

ssh user@server-ip

Screenshot:

09_ssh_test.png

## Review Installed Packages

dpkg -l | grep ansible

Screenshot:

10_package_validation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
