# Day 04 - Interview Questions

## Basic

### Q1 What Is Terraform State?

Terraform State tracks infrastructure resources and mappings.

### Q2 What Is terraform.tfstate?

Default state file used by Terraform.

### Q3 Why Does Terraform Need State?

To track infrastructure and detect changes.

### Q4 What Does terraform show Do?

Displays infrastructure information from state.

## Intermediate

### Q1 What Is State Locking?

Prevents multiple users from modifying state simultaneously.

### Q2 Difference Between Local And Remote State?

Local:

Stored Locally

Remote:

Stored Centrally

### Q3 Why Is State Important?

Tracks infrastructure and enables lifecycle management.

## Advanced (5+ Years)

### Q1 Why Is State Considered Critical?

Answer:

State is the source of truth for Terraform-managed infrastructure.

### Q2 What Happens If State Is Lost?

Answer:

Terraform may lose infrastructure tracking and resource mapping.

### Q3 Why Backup State Files?

Answer:

Protect Against Data Loss.

Support Recovery.

### Q4 Why Should Teams Avoid Local State?

Answer:

- Collaboration Issues

- No Locking

- Risk Of Conflicts

### Q5 How Do Enterprises Protect State Files?

Answer:

- Remote Storage

- Access Control

- Encryption

- Backup Strategy

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
