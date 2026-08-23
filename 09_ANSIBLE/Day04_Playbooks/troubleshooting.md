# Day 04 - Troubleshooting

## Issue 1

Playbook Syntax Error

Error:

YAML syntax issue

Solution:

ansible-playbook --syntax-check playbook.yml

## Issue 2

Host Unreachable

Cause:

SSH issue

Solution:

Verify:

- Security Group
- SSH Key
- Inventory IP

## Issue 3

Permission Denied

Cause:

Missing sudo privilege

Solution:

Use:

become: yes

## Issue 4

Package Installation Failed

Cause:

Repository unavailable

Solution:

Update repositories before installation.

## Issue 5

Handler Not Triggered

Cause:

No changes detected

Solution:

Verify notify statement.

## Production Scenario 1

Playbook hangs while configuring 500 servers.

Investigation:

- Check SSH connectivity
- Check DNS resolution
- Check network latency

## Production Scenario 2

Deployment succeeds on 90 servers but fails on 10.

Investigation:

- Compare OS versions
- Check package repositories
- Verify disk space

## Production Scenario 3

Ansible suddenly becomes slow.

Root Cause:

Fact gathering enabled on thousands of hosts.

Solution:

Disable:

gather_facts: no

when unnecessary.

## Production Scenario 4

Configuration drift detected.

Solution:

Re-run playbook because of idempotent design.

## Production Scenario 5

Secrets exposed in logs.

Solution:

- Use Vault
- Use no_log: true
- Restrict log access
