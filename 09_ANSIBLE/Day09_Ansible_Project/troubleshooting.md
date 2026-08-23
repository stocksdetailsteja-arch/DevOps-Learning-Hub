# Day 09 - Troubleshooting

## Issue 1

Host Unreachable

Cause:

SSH failure.

Solution:

Verify:

- Public IP
- Security Group
- SSH Key

## Issue 2

Playbook Fails

Cause:

YAML syntax errors.

Solution:

ansible-playbook --syntax-check site.yml

## Issue 3

Vault Authentication Failed

Cause:

Incorrect Vault password.

Solution:

Verify Vault credentials.

## Issue 4

Website Not Loading

Cause:

Nginx service not running.

Solution:

systemctl status nginx

Restart service.

## Issue 5

Permission Denied

Cause:

Missing sudo access.

Solution:

Use:

become: yes

## Production Scenario 1

Deployment Successful But Website Not Accessible

Root Cause:

Port 80 blocked in Security Group.

Solution:

Allow HTTP traffic.

## Production Scenario 2

Playbook Slow Across Hundreds Of Servers

Root Cause:

Fact gathering overhead.

Solution:

Optimize execution and disable unnecessary facts.

## Production Scenario 3

Credentials Exposed

Root Cause:

Hardcoded secrets.

Solution:

Use Vault and rotate credentials.

## Production Scenario 4

Application Deployment Failed

Root Cause:

File path mismatch.

Solution:

Verify deployment paths.

## Production Scenario 5

Multiple Team Members Causing Config Drift

Solution:

Manage everything through Git-controlled playbooks and roles.
