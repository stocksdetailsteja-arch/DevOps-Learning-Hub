# Day 02 - Interview Questions

## Basic

### Q1 What Is IAM?

AWS service used for access management and permissions.

### Q2 What Is An IAM User?

Identity representing a person or application.

### Q3 What Is An IAM Group?

Collection of IAM Users used for permission management.

### Q4 What Is MFA?

Multi-Factor Authentication adds an extra layer of security.

## Intermediate

### Q1 Difference Between User And Role?

User:

Long-lived identity.

Role:

Temporary credentials.

### Q2 Why Use Groups?

Centralized permission management.

### Q3 What Is Least Privilege?

Grant only required permissions.

## Advanced (5+ Years)

### Q1 Why Are IAM Roles Preferred Over Access Keys?

Answer:

- Temporary credentials

- Reduced security risk

- Easier rotation

- Better auditability

### Q2 How Would You Secure A Jenkins Server On AWS?

Answer:

Attach IAM Role

Avoid hardcoded keys

Enable logging

Use least privilege

Restrict network access

### Q3 Explain Authentication vs Authorization.

Authentication:

Identity verification.

Authorization:

Permission verification.

### Q4 Developer Needs Read Access To S3 But Nothing Else. How Would You Design Access?

Answer:

Create group

Create custom ReadOnly policy

Assign group policy

Enable MFA

Periodically review access

### Q5 Production EC2 Needs Access To S3. Should You Use Access Keys?

Answer:

No.

Attach IAM Role to EC2.

This avoids long-term credentials and follows AWS security best practices.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
