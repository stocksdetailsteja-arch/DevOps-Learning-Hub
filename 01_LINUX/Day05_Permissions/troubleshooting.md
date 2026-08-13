# Day 05 Troubleshooting

## Scenario 1

Application Deployment Fails

Error:

Permission denied

Root Cause:

Application user does not own directory.

Troubleshooting Steps:

Check ownership.

ls -l

Verify user.

whoami

Check permissions.

Update ownership.

Re-test.

## Scenario 2

Jenkins Cannot Write Artifacts

Error:

Access denied during build.

Root Cause:

Jenkins user lacks write permission.

Resolution:

Verify:

id jenkins

Verify ownership.

Update file permissions.

## Scenario 3

User Cannot Execute Script

Error:

Permission denied

when running:

./deploy.sh

Cause:

Execute bit missing.

Resolution:

chmod +x deploy.sh

## Scenario 4

Users Deleting Other Users' Files

Cause:

Shared directory missing Sticky Bit.

Resolution:

chmod +t shared_directory

## Scenario 5

Container Fails Due To Permission Issues

Cause:

Docker container running as non-root user.

Resolution:

Verify user ID mapping.

Verify mounted volume permissions.

Update ownership appropriately.

This is the first Linux topic where permissions directly connect to:

Jenkins
Docker
Kubernetes
AWS
Real Production Troubleshooting
