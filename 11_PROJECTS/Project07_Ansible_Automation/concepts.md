# Ansible Concepts

## Configuration Management

Managing infrastructure consistently through automation.

## Inventory

List of managed hosts.

Examples:

- Development
- Testing
- Production

## Playbook

YAML document defining automation tasks.

## Task

Single automation action.

Examples:

- Install package
- Restart service

## Role

Reusable automation component.

Contains:

- Tasks
- Defaults
- Vars
- Templates
- Files
- Handlers

## Handler

Runs only when notified.

Typical Example:

Restart Nginx

## Variable

Reusable values inside playbooks.

## Facts

System information collected from hosts.

Examples:

- IP Address
- OS Version
- Hostname

## Jinja2

Template engine used by Ansible.

## Idempotency

Executing automation multiple times should not create unnecessary changes.

## Vault

Encrypts sensitive data such as passwords.
