# Ansible Interview Cheatsheet

## What Is Ansible?

Agentless automation and configuration management tool.

Ansible uses playbooks to describe desired state and automate infrastructure. 【5-bdb784】【6-0bb26e】

## Why Ansible?

- Automation
- Configuration Management
- Deployment
- Orchestration
- Repeatability

## Ansible Architecture

Control Node

↓

Inventory

↓

SSH

↓

Managed Nodes

## What Is Inventory?

List of managed hosts and groups.

## Types Of Inventory

Static Inventory

Dynamic Inventory

## What Is A Playbook?

YAML file that describes automation tasks.

Playbooks are the core of Ansible automation. 【5-bdb784】【6-0bb26e】

## What Is A Task?

Single automation step.

## What Is A Module?

Reusable automation component.

Examples:

- package
- service
- copy
- template
- user

## What Is Idempotency?

Repeated execution produces the same desired state result.

The workbook highlights that repeated "changed" results may indicate non-idempotent automation. 【1-fb5fd9】【2-019686】

## What Is A Variable?

Reusable value used in automation.

## What Is A Fact?

System information collected from managed hosts.

Examples:

- OS
- Memory
- CPU
- Network

## What Is A Handler?

Runs only when notified by a changed task.

Common Example:

Restart Service

## What Is A Template?

Jinja2 template file.

## What Is Ansible Vault?

Used to encrypt sensitive information.

The workbook recommends Ansible Vault or an approved secret manager and avoiding plaintext credentials. 【1-fb5fd9】【2-019686】

## What Is A Role?

Reusable collection of:

- Tasks
- Templates
- Variables
- Handlers
- Files

Roles are a key reusable structure in Ansible. 【7-667c71】

## What Is Check Mode?

Simulates supported changes without applying them.

## What Are Tags?

Allow selective playbook execution.

## What Is Become?

Privilege escalation.

Equivalent to sudo for approved tasks.

## Ansible Security Best Practices

- Vault
- Least Privilege
- Role-Based Access
- Secret Stores
- Inventory Separation

The workbook emphasizes secret protection, restricted access and avoiding plaintext credentials. 【1-fb5fd9】【2-019686】
