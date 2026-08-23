# Day 07 - Troubleshooting

## Issue 1

Forgot Vault Password

Problem:

File cannot be decrypted.

Solution:

Recover from backup or rotate credentials.

There is no supported method to recover unknown Vault passwords.

## Issue 2

Vault Decryption Failed

Cause:

Incorrect password.

Solution:

Verify correct password.

## Issue 3

Playbook Prompts Continuously

Cause:

Missing vault password.

Solution:

Use:

--ask-vault-pass

or

--vault-password-file

## Issue 4

Encrypted Variable Not Loading

Cause:

Incorrect variable reference.

Solution:

Verify variable name.

## Issue 5

CI/CD Deployment Failure

Cause:

Pipeline missing Vault credential.

Solution:

Configure secure credential storage.

## Production Scenario 1

AWS Credentials Exposed In Git

Root Cause:

Credentials committed before Vault encryption.

Solution:

- Rotate credentials
- Remove history
- Encrypt secrets

## Production Scenario 2

Jenkins Pipeline Fails During Deployment

Root Cause:

Vault password unavailable.

Solution:

Store password securely in Jenkins Credentials.

## Production Scenario 3

Developer Accidentally Shares Vault Password

Solution:

- Change Vault Password
- Rekey vault files
- Rotate all affected credentials

## Production Scenario 4

Large Team Managing Hundreds Of Vault Files

Solution:

- Use naming standards
- Separate environments
- Centralize secret management

## Production Scenario 5

Regulatory Audit Failure

Root Cause:

Plain-text credentials found in repository.

Solution:

Implement:

- Ansible Vault
- Secret scanning
- Git pre-commit checks
