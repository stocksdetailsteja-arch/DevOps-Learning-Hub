# Day 08 - Troubleshooting

## Issue 1

AWS Authentication Failed

Cause:

Invalid credentials.

Solution:

Verify:

aws configure

## Issue 2

Access Denied

Cause:

Missing IAM permissions.

Solution:

Review IAM policies.

## Issue 3

Collection Not Found

Cause:

Collection not installed.

Solution:

ansible-galaxy collection install amazon.aws

## Issue 4

boto3 Missing

Error:

No module named boto3

Solution:

pip install boto3

## Issue 5

Region Not Configured

Cause:

AWS region missing.

Solution:

Specify region explicitly.

## Production Scenario 1

Playbook Works In Development But Fails In Production

Root Cause:

Different IAM Permissions.

Solution:

Compare execution roles.

## Production Scenario 2

Mass EC2 Deployment Fails

Root Cause:

AWS API Rate Limiting.

Solution:

Reduce API calls and implement retries.

## Production Scenario 3

Dynamic Inventory Returns Empty Results

Root Cause:

Incorrect filtering or tagging.

Solution:

Verify tags and inventory configuration.

## Production Scenario 4

Credentials Exposed In Git

Root Cause:

Hardcoded Access Keys.

Solution:

- IAM Roles
- Vault
- Secret Manager

## Production Scenario 5

Unexpected AWS Charges

Root Cause:

Test resources not deleted.

Solution:

Implement cleanup automation and regular cost reviews.
