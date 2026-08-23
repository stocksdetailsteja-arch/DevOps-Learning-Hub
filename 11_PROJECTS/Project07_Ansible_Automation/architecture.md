# Ansible Architecture

## Architecture

Ansible Control Node

↓

SSH

↓

Managed Hosts

↓

Playbooks

↓

Roles

↓

Tasks

↓

System Configuration

## Components

### Inventory

Contains managed servers.

### Playbook

Automation workflow.

### Role

Reusable automation unit.

### Template

Dynamic configuration file.

### Handler

Triggered restart or reload operation.

## Automation Flow

Inventory

↓

Playbook

↓

Role

↓

Tasks

↓

Handler

↓

Validation
