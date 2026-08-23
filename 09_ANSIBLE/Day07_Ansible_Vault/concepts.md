# Day 07 - Ansible Vault Concepts

## What Is Ansible Vault?

Ansible Vault is a security feature used to encrypt sensitive data.

It prevents passwords and credentials from being stored as plain text.

## Why Is Vault Important?

Modern infrastructure uses:

- Cloud Credentials
- Database Secrets
- API Tokens
- Internal Passwords

These secrets should never be stored in Git repositories without encryption.

## Vault Encryption

Ansible Vault uses strong encryption algorithms to protect data.

Encrypted files are unreadable without the vault password.

## Vault Password

Access to encrypted content requires:

- Vault Password
or
- Vault Password File

Only authorized users can decrypt data.

## Vault Files

Examples:

vault.yml

secrets.yml

passwords.yml

## Vault Variables

Variables can be stored inside encrypted files.

Example:

- AWS Secret Key
- MySQL Password
- API Token

## Vault Integration

Vault works with:

- Playbooks
- Roles
- Inventories
- Variables

## Vault Workflow

Developer

↓

Encrypt Secret

↓

Store In Git

↓

Playbook Uses Secret

↓

Authorized User Provides Password

↓

Execution Continues

## Benefits

- Security
- Compliance
- Encryption
- Source Control Protection
- Enterprise Readiness
