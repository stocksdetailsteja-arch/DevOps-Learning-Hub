# Project 06 - Terraform AWS Architecture

## Architecture Objective

Provision a reusable AWS web infrastructure using modular Terraform configuration.

## Infrastructure Flow

Terraform CLI Or CI/CD Pipeline

↓

AWS Provider

↓

AWS APIs

↓

VPC

↓

Public Subnets

↓

EC2 Application Instances

↓

Application Load Balancer

↓

End Users

## State Flow

Terraform Operation

↓

State Lock Acquisition

↓

S3 Remote Backend

↓

Terraform State Object

↓

State Lock Release

## Network Architecture

Internet

↓

Internet Gateway

↓

Public Route Table

↓

Application Load Balancer

↓

Application Security Group

↓

EC2 Instances

## Security Group Flow

Internet

↓

ALB Security Group

↓

Application Load Balancer

↓

Application Security Group

↓

EC2 Instances

## Terraform Module Flow

Root Module

├── VPC Module
├── Security Module
├── Compute Module
└── Load Balancer Module

## VPC Module Responsibilities

- VPC
- Public subnets
- Internet Gateway
- Public route table
- Route table associations

## Security Module Responsibilities

- ALB Security Group
- Application Security Group
- HTTP traffic rules
- Restricted SSH rule

## Compute Module Responsibilities

- EC2 instances
- AMI selection
- Instance type
- User data
- Resource tags

## Load Balancer Module Responsibilities

- Application Load Balancer
- Target Group
- Listener
- EC2 target attachments

## Change Workflow

Developer Changes Terraform

↓

terraform fmt

↓

terraform validate

↓

terraform plan

↓

Plan Review

↓

Approval

↓

terraform apply

↓

AWS Validation

## Failure Points

- Invalid credentials
- Incorrect Region
- Provider installation failure
- Backend unavailable
- State lock conflict
- AWS service quota
- Invalid subnet CIDR
- Missing dependency
- Security Group error
- EC2 capacity issue
- ALB target health failure
- Partial apply
- Manual AWS changes

## Recovery Principles

- Never edit state manually
- Preserve state backups
- Use S3 bucket versioning
- Review state before recovery
- Use imports for existing resources
- Use moved blocks for address changes
- Prefer small reviewed changes
- Validate every reverse change
- Do not use force-unlock without proving the lock is stale

## Environment Separation

Each environment should use:

- Separate state key
- Separate variable values
- Consistent modules
- Environment-specific tags
- Controlled IAM permissions

## Future Improvements

- Private application subnets
- NAT Gateway
- Auto Scaling Group
- HTTPS listener
- ACM certificate
- Route 53
- WAF
- RDS private database
- VPC Flow Logs
- CloudWatch alarms
- CI/CD plan workflow
- Policy as code
- Terraform testing
