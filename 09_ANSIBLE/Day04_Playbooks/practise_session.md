# Day 04 - Practice Session

## Lab 1

Create Lab Directory

mkdir Day04_Playbooks_Lab

cd Day04_Playbooks_Lab

## Lab 2

Create Inventory File

nano inventory

Add:

[web]
server1 ansible_host=<IP>

## Lab 3

Create First Playbook

nano ping.yml

Tasks:

- Connect to hosts
- Execute ping module

Run:

ansible-playbook -i inventory ping.yml

## Lab 4

Install Nginx

Create:

nginx.yml

Tasks:

- Install nginx
- Start service
- Enable service

Execute playbook

Verify using browser.

## Lab 5

Create File Using Playbook

Tasks:

- Create directory
- Create file
- Set permissions

## Lab 6

Handler Exercise

Tasks:

- Copy nginx.conf
- Notify restart handler

Observe handler execution.

## Lab 7

Check Mode

Run:

ansible-playbook --check nginx.yml

Observe proposed changes.

## Screenshots To Capture

- Playbook execution
- Successful output
- Nginx installed
- Service running
- Handler triggered
