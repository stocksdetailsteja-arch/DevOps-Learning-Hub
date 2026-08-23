# Project 06 - Terraform AWS

## Project Title

Reusable AWS Infrastructure Provisioning With Terraform

## Objective

Build reusable, secure, reviewable, and cost-aware AWS infrastructure using Terraform.

The project provisions:

- Custom VPC
- Public Subnets
- Internet Gateway
- Route Tables
- Security Groups
- EC2 Instances
- Application Load Balancer
- Target Group
- Listener
- CloudWatch Monitoring
- Remote Terraform State
- State Locking

## Business Problem

Manually creating AWS infrastructure introduces:

- Configuration inconsistencies
- Human errors
- Limited change visibility
- Difficult environment reproduction
- Poor rollback planning
- Configuration drift
- Incomplete cleanup
- Weak auditability

## Solution

Use Terraform Infrastructure as Code to define AWS resources in version-controlled configuration.

Terraform Configuration

↓

Terraform Initialization

↓

Terraform Validation

↓

Terraform Plan

↓

Human Review

↓

Terraform Apply

↓

AWS Infrastructure

↓

Application Validation

↓

Monitoring

↓

Terraform Destroy

## Technologies Used

- Terraform
- AWS
- Amazon VPC
- Amazon EC2
- Application Load Balancer
- Security Groups
- Amazon S3
- Amazon CloudWatch
- Git
- GitHub
- Bash

## Project Features

- Reusable Terraform modules
- Input variables
- Local values
- Outputs
- Provider version constraints
- Remote state
- S3 state locking
- S3 bucket versioning
- Environment-specific inputs
- Resource tagging
- User-data configuration
- Validation scripts
- Drift detection
- Import workflow
- Safe destruction
- Cost cleanup

## Functional Requirements

- Create a custom VPC
- Create two public subnets
- Create an Internet Gateway
- Create public route configuration
- Create an ALB Security Group
- Create an application Security Group
- Launch EC2 application instances
- Install Nginx through user data
- Create an Application Load Balancer
- Register EC2 instances with a target group
- Expose the application through the ALB
- Produce useful outputs

## Non-Functional Requirements

- Reusability
- Security
- Repeatability
- Reviewability
- Recoverability
- Maintainability
- Cost awareness
- Environment separation

## Security Requirements

- Do not commit AWS credentials
- Do not commit terraform.tfstate
- Do not commit terraform.tfvars containing sensitive values
- Use IAM roles or approved temporary credentials
- Apply least privilege to the Terraform execution identity
- Restrict SSH access to a trusted CIDR
- Allow application traffic from the ALB Security Group
- Enable backend bucket versioning
- Block public access to the state bucket
- Encrypt backend data
- Review Terraform plans before apply
- Protect production apply operations with approval

## Remote State

Terraform state must be stored in a protected remote backend for team-based workflows.

The S3 backend configuration should include:

- Unique S3 bucket name
- Environment-specific state key
- AWS Region
- Encryption
- State locking
- Bucket versioning
- Least-privilege IAM access

## Validation Criteria

The project is successful when:

- AWS identity is verified
- Terraform initializes successfully
- Formatting check succeeds
- Configuration validation succeeds
- Plan is saved and reviewed
- Apply completes successfully
- VPC exists
- Public subnets exist
- Security Groups contain expected rules
- EC2 instances become healthy
- ALB targets become healthy
- Application responds through the ALB
- Outputs are available
- State exists in the configured S3 backend
- A repeated plan shows no unintended changes
- Controlled drift can be detected
- Destruction plan is reviewed
- Lab resources are removed successfully

## Portfolio Evidence

Capture:

- Repository structure
- Terraform version
- AWS identity
- Remote backend
- Backend versioning
- Terraform initialization
- Formatting
- Validation
- Plan summary
- Apply result
- VPC
- Subnets
- Security Groups
- EC2 instances
- ALB target health
- Application response
- Outputs
- Remote state
- Drift detection
- State lock behaviour
- Destruction plan
- Resource cleanup
- GitHub repository

## Cost Control

- Use small EC2 lab instances
- Avoid NAT Gateway for this public-subnet lab
- Do not leave ALB running after practice
- Use only required Availability Zones
- Destroy all Terraform-managed resources
- Delete unused EBS volumes
- Release unused Elastic IP addresses
- Remove the remote-state bucket only when no longer required
- Preserve required state backups before backend removal
- Review the AWS Billing dashboard after cleanup

## Learning Outcomes

After completing this project, you should be able to:

- Explain Infrastructure as Code
- Write Terraform configuration
- Use providers and resources
- Create reusable modules
- Use variables and outputs
- Configure remote state
- Explain state locking
- Review Terraform plans
- Detect configuration drift
- Import existing resources
- Troubleshoot failed applies
- Perform controlled reverse changes
- Destroy lab infrastructure safely
- Explain Terraform architecture during interviews
