# Troubleshooting

## Scenario 1

Host Unreachable

Check:

- SSH
- Security Group
- Inventory

## Scenario 2

Permission Denied

Check:

- become
- sudo permissions

## Scenario 3

Playbook Syntax Error

Check:

ansible-playbook --syntax-check

## Scenario 4

Variable Not Found

Check:

- group_vars
- host_vars

## Scenario 5

Handler Not Triggered

Check:

notify section

## Scenario 6

Template Failure

Check:

Jinja2 syntax

## Scenario 7

Vault Failure

Check:

vault password
encrypted file
