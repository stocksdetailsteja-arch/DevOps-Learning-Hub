# Day 05 - Troubleshooting

## Issue 1

Role Not Found

Error:

role was not found

Solution:

Verify:

- Role path
- Role name
- roles directory

## Issue 2

Variables Not Loading

Cause:

Incorrect variable definition.

Solution:

Verify:

vars/main.yml

defaults/main.yml

## Issue 3

Template Rendering Failure

Cause:

Undefined variable.

Solution:

Check:

{{ variable_name }}

existence.

## Issue 4

Handler Not Triggering

Cause:

Missing notify statement.

Solution:

Verify task configuration.

## Issue 5

Role Execution Skipped

Cause:

Incorrect playbook reference.

Solution:

Verify:

roles:
  - nginx_role

## Production Scenario 1

Role behaves differently in production compared to staging.

Root Cause:

Environment-specific variable mismatch.

Solution:

Separate inventories and variables.

## Production Scenario 2

Deployment fails across 200 servers.

Investigation:

- Check inventory
- Check SSH access
- Check sudo permissions

## Production Scenario 3

Unexpected service restart.

Root Cause:

Template constantly changing.

Solution:

Verify template content and handler logic.

## Production Scenario 4

Role execution becomes slow.

Root Cause:

Excessive fact gathering.

Solution:

Disable unnecessary facts.

## Production Scenario 5

Secrets exposed in Git repository.

Solution:

- Use Vault
- Remove secrets
- Rotate credentials
- Audit repository history
