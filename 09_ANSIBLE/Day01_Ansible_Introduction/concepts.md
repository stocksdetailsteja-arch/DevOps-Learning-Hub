# Day 01 - Ansible Introduction Concepts

## What Is Ansible?

Ansible is an Automation and Configuration Management tool used to manage infrastructure through code.

Tasks Automated By Ansible:

- Package Installation

- User Management

- Server Configuration

- Application Deployment

- Service Management

- Infrastructure Automation

Ansible automation is based on inventories, modules, and playbooks.

## Why Ansible?

Without Automation

Admin

↓

Login To Server 1

↓

Install Package

↓

Login To Server 2

↓

Install Package

↓

Repeat Many Times

With Ansible

Playbook

↓

Execute Once

↓

All Servers Updated

## What Is Configuration Management?

Configuration Management ensures systems remain consistent.

Examples:

- Same Packages

- Same Users

- Same Configuration

- Same Services

Across All Servers

## Agentless Architecture

One Of The Biggest Advantages Of Ansible.

Control Node

↓

SSH

↓

Managed Nodes

No Agents Required.

## Ansible Architecture

Control Node

↓

Inventory

↓

SSH

↓

Managed Nodes

Components:

Control Node

System where Ansible is installed.

Managed Node

Remote servers managed by Ansible.

Inventory

File containing server information.

Ansible inventories are a core component used to identify and organize managed nodes.

Modules

Small reusable units of work.

Examples:

- Ping

- Copy

- File

- Yum

- Apt

- Service

Playbooks

YAML files containing automation tasks.

Playbooks are at the heart of Ansible automation.

## How Ansible Works

Control Node

↓

Inventory

↓

SSH Connection

↓

Module Execution

↓

Task Result

## Real World Example

DevOps Engineer

↓

Execute Playbook

↓

100 Linux Servers

↓

Apache Installed

↓

Verified

↓

Completed

## Benefits Of Ansible

- Agentless

- Simple

- Easy To Learn

- SSH Based

- Scalable

- Open Source

- Infrastructure Automation

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
