# Day 08 - Interview Questions

## Basic

### Q1 Why Are Terraform Best Practices Important?

They improve security, maintainability, and scalability.

### Q2 Should terraform.tfstate Be Committed To Git?

No.

### Q3 Why Use Modules?

To reduce code duplication.

### Q4 Why Use Variables?

To make code reusable.

## Intermediate

### Q1 Why Separate Dev, QA, And Prod?

To prevent environment conflicts.

### Q2 Why Use Remote State?

For collaboration and security.

### Q3 Why Use CI/CD With Terraform?

To automate deployments and validations.

## Advanced (5+ Years)

### Q1 What Terraform Standards Would You Enforce In An Enterprise?

Answer:

- Naming Standards

- Modules

- Git Standards

- State Security

- Secret Management

- CI/CD Validation

### Q2 What Files Should Never Be Stored In Git?

Answer:

- terraform.tfstate

- terraform.tfstate.backup

- .terraform/

- Secrets

### Q3 How Would You Secure Terraform Deployments?

Answer:

- IAM Roles

- Remote State

- Encryption

- Secrets Manager

- Pipeline Controls

### Q4 Why Implement Code Reviews?

Answer:

Prevent Infrastructure Mistakes.

Improve Quality.

### Q5 How Would You Organize A Large Terraform Repository?

Answer:

environments/

modules/

backend/

scripts/

documentation/

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
