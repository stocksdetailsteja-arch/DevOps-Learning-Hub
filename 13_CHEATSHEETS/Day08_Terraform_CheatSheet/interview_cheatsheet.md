# Terraform Interview Cheatsheet

## What Is Terraform?

Infrastructure as Code tool from HashiCorp used to provision and manage infrastructure. 【3-cb2caf】

## What Is Infrastructure As Code?

Managing infrastructure using code instead of manual operations.

## Terraform Workflow

Write

↓

Init

↓

Validate

↓

Plan

↓

Apply

↓

Verify

Terraform workflow includes initialization, planning and apply operations. 【3-cb2caf】

## What Is Provider?

Plugin that enables Terraform to interact with cloud services.

Examples:

- AWS
- Azure
- Kubernetes

## What Is Resource?

Infrastructure object managed by Terraform.

Examples:

- EC2
- VPC
- Security Group

## What Is Variable?

Input value supplied to Terraform configuration.

## What Is Output?

Value exposed after deployment.

Examples:

- Public IP
- VPC ID
- Load Balancer DNS

## What Is Terraform State?

Terraform state maps Terraform resources to actual infrastructure resources. 【3-cb2caf】【1-f94532】

## What Is Remote State?

State stored centrally instead of local machine.

Benefits:

- Team Collaboration
- Backup
- Locking
- Consistency

Your Terraform workbook recommends remote state and locking to avoid configuration drift. 【1-f94532】【2-b80fc3】

## What Is State Locking?

Prevents multiple users from modifying state simultaneously. 【1-f94532】【2-b80fc3】

## What Is Backend?

Storage location for Terraform state.

Examples:

- S3
- Azure Storage
- Terraform Cloud

## What Is Module?

Reusable Terraform configuration block.

Benefits:

- Reusability
- Standardization
- Maintainability

Your Terraform workbook recommends modules for reliability and scalability. 【1-f94532】【2-b80fc3】

## What Is Drift?

Difference between actual infrastructure and Terraform configuration.

## What Is Import?

Adds existing resource into Terraform state management.

## count Vs for_each

count:

Index Based

for_each:

Key Based

The Terraform workbook recommends careful use of modules and for_each when scaling solutions. 【1-f94532】【2-b80fc3】

## Workspace

Separate Terraform state environments.

Examples:

- dev
- test
- prod

## Plan Vs Apply

Plan:

Preview Changes

Apply:

Execute Changes

## Terraform Security Best Practices

- Least Privilege
- Remote State
- State Locking
- Secret Stores
- Code Reviews

The workbook recommends least-privilege execution roles and policy controls. 【1-f94532】【2-b80fc3】
