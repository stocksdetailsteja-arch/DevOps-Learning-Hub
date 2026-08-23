# Day 05 - Practice Session

## Lab 1

Create Practice Directory

mkdir Day05_Roles_Lab

cd Day05_Roles_Lab

## Lab 2

Generate First Role

ansible-galaxy init nginx_role

Observe generated folders.

## Lab 3

Modify Tasks

Edit:

tasks/main.yml

Add:

- Install Nginx
- Start Nginx

## Lab 4

Create Main Playbook

Create:

site.yml

Use nginx_role.

## Lab 5

Execute Role

Run:

ansible-playbook -i inventory site.yml

Verify Nginx installation.

## Lab 6

Create Variable

Add custom port variable.

Use variable inside templates.

## Lab 7

Create Handler

Trigger Nginx restart only when configuration changes.

## Lab 8

Install Public Role

Install nginx role from Ansible Galaxy.

Execute role.

## Screenshots To Capture

- Role structure
- Playbook execution
- Successful role deployment
- Nginx service status
- Ansible Galaxy installation
