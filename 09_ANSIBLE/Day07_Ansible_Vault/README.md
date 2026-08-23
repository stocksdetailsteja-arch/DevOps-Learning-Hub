# Day 07 - Ansible Vault

## Objective

Learn how to secure sensitive information in Ansible using Ansible Vault.

In real-world DevOps environments, automation often requires sensitive data such as:

- AWS Access Keys
- AWS Secret Keys
- Database Passwords
- API Tokens
- SSH Keys
- Application Secrets

Storing these values in plain text is a major security risk.

Ansible Vault helps encrypt sensitive information and securely use it inside playbooks.

## Why Ansible Vault?

Without Vault:

- Secrets exposed in Git repositories
- Security vulnerabilities
- Compliance violations
- Risk of credential leakage

With Vault:

- Encrypt sensitive data
- Secure source control usage
- Meet compliance requirements
- Protect production environments

## Real World Use Cases

- Store AWS Credentials
- Store Database Passwords
- Store Kubernetes Secrets
- Secure API Tokens
- Protect CI/CD Variables
- Manage Production Credentials

## Expected Outcome

By the end of this lesson you will be able to:

- Create encrypted files
- Encrypt existing files
- Edit encrypted files
- Decrypt files
- Use Vault in Playbooks
- Secure enterprise infrastructure automation
