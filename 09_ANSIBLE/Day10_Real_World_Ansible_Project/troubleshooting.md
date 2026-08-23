# Day 10 - Troubleshooting

## Issue 1

EC2 Unreachable

Cause:

Security Group issue.

Solution:

Verify:

- Port 22
- Public IP
- SSH Key

## Issue 2

Docker Installation Failed

Cause:

Repository issue.

Solution:

Run:

apt update

before installation.

## Issue 3

Application Container Not Running

Cause:

Container crash.

Solution:

Check:

docker logs CONTAINER_ID

## Issue 4

Nginx Returns 502 Error

Cause:

Backend container unavailable.

Solution:

Verify application container status.

## Issue 5

Vault Authentication Failure

Cause:

Incorrect password.

Solution:

Verify vault credentials.

## Production Scenario 1

Deployment Successful But Website Down

Root Cause:

Security Group blocking HTTP traffic.

Solution:

Open port 80.

## Production Scenario 2

Application Works Locally But Fails In Production

Root Cause:

Environment variable mismatch.

Solution:

Validate deployment configuration.

## Production Scenario 3

Docker Container Consumes Excess Memory

Root Cause:

Memory leak.

Solution:

Analyze container metrics.

Implement limits.

## Production Scenario 4

Jenkins Pipeline Randomly Fails

Root Cause:

Temporary network issues.

Solution:

Implement retry mechanisms.

## Production Scenario 5

Monitoring Missing Data

Root Cause:

Node Exporter service stopped.

Solution:

Restart and verify exporter service.

## Production Scenario 6

AWS Cost Suddenly Increased

Root Cause:

Unused EC2 resources left running.

Solution:

Implement automated cleanup procedures and resource tagging.

## Production Scenario 7

Configuration Drift Across Environments

Root Cause:

Manual server modifications.

Solution:

Enforce Infrastructure as Code using Ansible.
