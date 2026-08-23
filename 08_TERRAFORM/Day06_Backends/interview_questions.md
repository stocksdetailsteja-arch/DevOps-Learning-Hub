# Day 06 - Interview Questions

## Basic

### Q1 What Is A Terraform Backend?

Defines where Terraform state is stored.

### Q2 Why Use Remote State?

Enable collaboration and centralized management.

### Q3 What Is An S3 Backend?

Terraform state stored inside an S3 bucket.

### Q4 Why Use DynamoDB?

State locking.

## Intermediate

### Q1 Local Backend Vs Remote Backend?

Local:

Single User

Remote:

Team Collaboration

### Q2 Why Is State Locking Important?

Prevents concurrent modifications.

### Q3 Why Is S3 Popular For Terraform?

Durability, availability, and AWS integration.

## Advanced (5+ Years)

### Q1 Why Do Enterprises Use Remote State?

Answer:

- Collaboration

- Security

- Backup

- State Locking

- Governance

### Q2 What Happens Without Locking?

Answer:

State corruption risk due to concurrent updates.

### Q3 How Would You Secure Terraform State?

Answer:

- Bucket Encryption

- Versioning

- IAM Policies

- Audit Logging

### Q4 State Backend Not Accessible. What Will You Check?

Answer:

IAM Permissions

S3 Bucket Access

Backend Configuration

Network Access

### Q5 Why Enable Versioning On State Bucket?

Answer:

State Recovery and Rollback Support.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
