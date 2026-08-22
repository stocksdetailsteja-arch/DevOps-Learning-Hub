# Day 08 - Credentials Management Concepts

## What Are Credentials?

Credentials are secrets used for authentication and authorization.

Examples:

- Username & Password

- Token

- SSH Key

- Secret Text

## Why Credentials Management Matters?

Without secure credential handling:

- Secrets May Leak

- Systems May Be Compromised

- Production Access May Be Exposed

## Credentials Store

Jenkins stores credentials securely inside the Credentials Store.

Examples:

Global Credentials

Folder Credentials

Project Credentials

## Username And Password

Used For:

- Repository Access

- Application Login

- Automation Tasks

## Personal Access Token (PAT)

Token-based authentication.

Commonly Used For:

- GitHub

- GitLab

- APIs

Benefits:

- Better Security

- Easier Rotation

- Fine-Grained Access

## Secret Text

Stores sensitive text values.

Examples:

API_KEY

ACCESS_TOKEN

AUTH_TOKEN

## SSH Keys

Used For:

- Git Repository Access

- Linux Server Access

- Deployment Automation

## Credentials Binding

Credentials are injected during job execution.

Examples:

Environment Variable

Pipeline Variable

Secret Reference

## Secret Masking

Jenkins masks sensitive values from console output.

Purpose:

Protect credentials during execution.

## Credential Scope

Examples:

Global

Folder Level

Job Level

Always prefer minimum required access.

## Security Best Practices

- Never Hardcode Secrets

- Use Credentials Store

- Rotate Tokens

- Use Least Privilege

- Limit Access

- Audit Credentials Regularly

## Real DevOps Example

GitHub

↓

PAT Stored In Jenkins

↓

Pipeline Uses Credential

↓

Clone Repository Securely

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
