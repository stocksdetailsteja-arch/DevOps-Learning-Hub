# Ansible Troubleshooting Cheat Sheet

## Host UNREACHABLE

Check:

- Inventory Address
- SSH Port
- Username
- Private Key
- Route
- Firewall
- Security Group
- SSH Service

This troubleshooting path is explicitly recommended in the workbook. 【1-fb5fd9】【2-019686】

## Permission Denied

Check:

- Remote User
- become
- sudo
- Ownership
- File Permissions

The workbook recommends checking become configuration, file ownership and target path permissions. 【1-fb5fd9】【2-019686】

## Syntax Failure

Run:

ansible-playbook site.yml \
--syntax-check

## Variables Not Found

Check:

- group_vars
- host_vars
- Role Variables
- Variable Names

## Playbook Always Changed

Investigate:

- Non-Idempotent Tasks
- Raw Commands
- changed_when Logic

The workbook identifies non-idempotent tasks and incorrect changed_when usage as common causes. 【1-fb5fd9】【2-019686】

## Handler Not Triggering

Check:

- notify
- Handler Name
- Change Detection

## Host Limit Problem

Verify:

--limit

Inventory Groups

Host Names

## Vault Failure

Check:

- Vault Password
- File Permissions
- Vault Configuration

Ansible Vault is specifically recommended for protecting secrets. 【8-a53961】【9-d3e549】

## SSH Connection Failure

Check:

ansible all -m ping

Verify:

- SSH Key
- User
- Host Reachability

## Risky Production Rollout

Use:

--check

--diff

--limit

serial

tags

validation

health checks

The workbook specifically recommends check mode, diff mode, limits, serial batches, tags and validation tasks. 【1-fb5fd9】【2-019686】

## Configuration Drift

Check:

- Manual Changes
- Missing Playbook Logic
- Wrong Inventory
- Inconsistent Variables

