# Day 02 - Inventory Configuration Concepts

## What Is An Inventory?

Inventory is a file that contains information about managed nodes.

Example:

Control Node

↓

Inventory

↓

Managed Nodes

Inventories are a core component of Ansible automation.

## Why Is Inventory Required?

Without Inventory:

Ansible

↓

Does Not Know

↓

Which Servers To Manage

With Inventory:

Ansible

↓

Knows Target Servers

↓

Executes Tasks Efficiently

## Static Inventory

A manually created inventory file.

Example:

INI
1
[web]
2
server1
3
server2
4
 
5
[db]
6
server3
Show more lines

Benefits:

- Simple

- Easy To Manage

- Beginner Friendly

## Dynamic Inventory

Inventory generated automatically.

Examples:

- AWS EC2

- Azure VM

- GCP VM

Benefits:

- Automatic Discovery

- Cloud Integration

- Scalability

Dynamic inventories are widely used in cloud environments.

## Inventory Architecture

Control Node

↓

Inventory

↓

Groups

↓

Hosts

↓

Managed Nodes

## Host Groups

Groups organize servers logically.

Example:

INI
1
[web]
2
web1
3
web2
4
 
5
[database]
6
db1
7
db2
Show more lines

Benefits:

- Easier Management

- Group Based Automation

- Better Scalability

## Host Variables

Variables assigned to individual hosts.

Example:

INI
1
web1 ansible_host=10.0.0.10
Show more lines

Purpose:

Host Specific Configuration

## Group Variables

Variables assigned to groups.

Example:

INI
1
[web:vars]
2
http_port=80
Show more lines

Purpose:

Shared Configuration

## Inventory Execution Flow

Playbook

↓

Inventory

↓

Group

↓

Host

↓

Task Execution

## Enterprise Inventory Example

INI
1
[dev]
2
dev1
3
dev2
4
 
5
[qa]
6
qa1
7
qa2
8
 
9
[prod]
10
prod1
11
prod2
Show more lines

Benefits:

- Environment Separation

- Better Governance

- Controlled Deployments

## Real World Example

Jenkins

↓

Ansible

↓

Inventory

↓

Web Servers

↓

Application Deployment

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
