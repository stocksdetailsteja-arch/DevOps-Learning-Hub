# Day 07 - Interview Questions

## Beginner Level

### What is Ansible Vault?

Ansible Vault is a feature used to encrypt sensitive data such as passwords and secrets.

### Why is Vault required?

To protect sensitive information from unauthorized access.

### What kind of information is stored in Vault?

- Passwords
- API Keys
- AWS Credentials
- Database Secrets

### How do you create a Vault file?

ansible-vault create secrets.yml

### How do you edit a Vault file?

ansible-vault edit secrets.yml

## Intermediate Level

### Can Vault files be stored in Git?

Yes.

Vault files are encrypted and safe to store in Version Control systems.

### How do you execute a playbook using Vault?

ansible-playbook site.yml --ask-vault-pass

### What is the purpose of rekey?

Rekey changes the Vault password while preserving encrypted content.

### Explain encrypt_string.

encrypt_string encrypts individual values instead of complete files.

### What is Vault Password File?

A file containing the Vault password used for automated execution.

## Advanced Level (5+ Years)

### How do enterprises manage Vault passwords?

- Secret Management Systems
- CI/CD Credential Stores
- HashiCorp Vault
- AWS Secrets Manager

Passwords are never hardcoded.

### Why is storing vault-password-file dangerous?

If the password file is exposed, encrypted secrets become accessible.

The file should be secured or dynamically generated.

### How would you implement Vault in Jenkins?

- Store password in Jenkins Credentials
- Retrieve securely during pipeline execution
- Avoid exposing logs

### How is Ansible Vault different from AWS Secrets Manager?

Vault:

- Encrypts files

AWS Secrets Manager:

- Centralized secret management service

Large enterprises often use both together.

### Explain a real-world Vault implementation.

An organization stored:

- AWS Access Keys
- RDS Passwords
- API Tokens

inside Vault files.

The files were committed to Git while the decryption password remained inside Jenkins Credential Store.

### What are common Vault mistakes?

- Hardcoded passwords
- Sharing Vault keys
- Storing password files in Git
- Weak encryption practices
