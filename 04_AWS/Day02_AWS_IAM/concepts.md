# Day 02 - AWS IAM Concepts

## What Is IAM?

IAM (Identity and Access Management) allows secure control of access to AWS resources. IAM provides users, groups, roles, policies, and MFA capabilities.

## Why IAM Is Critical?

Without IAM:

- Everyone uses root account

- No accountability

- No access control

- Increased security risks

## What Is An IAM User?

An IAM User is an identity for a person or application.

An IAM user can have:

- Username

- Password

- Access Keys

- Permissions

- MFA

IAM users represent individual identities that access AWS resources.

## What Is An IAM Group?

A Group is a collection of IAM users.

Example:

Developers Group

↓

Developer1

Developer2

Developer3

Policies attached to the group apply to all members.

## What Is An IAM Role?

A Role provides temporary credentials.

Roles are commonly used by:

- EC2

- Lambda

- ECS

- Cross Account Access

- Federated Users

Roles provide temporary access through trust relationships.

## What Is An IAM Policy?

Policies are JSON documents defining permissions. Policies determine whether actions are allowed or denied.

Example:

Allow:

s3:GetObject

Deny:

ec2:TerminateInstances

## Policy Structure

Policy Contains:

- Effect

- Action

- Resource

- Condition

Example:

Effect = Allow

Action = s3:ListBucket

Resource = Bucket ARN

## Policy Types

AWS Managed Policy

Created and maintained by AWS.

Example:

AmazonS3ReadOnlyAccess

Customer Managed Policy

Created by organization.

Inline Policy

Attached directly to User, Group, or Role.

IAM supports multiple policy categories including identity-based and resource-based policies.

## Principle Of Least Privilege

Users should receive only permissions required to perform their job.

Least privilege is a core security principle repeatedly emphasized in AWS and DevOps security practices.

Bad:

AdministratorAccess for everyone

Good:

Read-only access where needed

Specific write permissions when required

## Multi-Factor Authentication (MFA)

MFA adds an additional authentication factor.

Example:

Password

Authenticator Application Code

AWS IAM supports MFA configuration for users.

## Root User Best Practices

Never use root user for daily work.

Best Practices:

- Enable MFA

- Store credentials securely

- Do not create access keys unless absolutely required

- Use IAM users/roles instead

## Authentication vs Authorization

Authentication:

Who are you?

Authorization:

What are you allowed to do?

## Real World DevOps Example

Jenkins EC2 Instance

↓

IAM Role Attached

↓

Temporary Credentials

↓

Access S3

↓

No Hardcoded Secrets

This is preferred over storing access keys in code or Jenkins jobs.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
