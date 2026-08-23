# Project 06 - Terraform AWS Concepts

## Infrastructure As Code

Infrastructure as Code means managing infrastructure through machine-readable configuration.

Benefits:

- Repeatability
- Version control
- Peer review
- Automation
- Auditability
- Environment consistency

## Terraform Configuration

Terraform configuration describes the desired infrastructure.

Common file extension:

.tf

## Provider

A provider allows Terraform to communicate with a remote platform.

Example:

AWS Provider

## Resource

A resource represents infrastructure managed by Terraform.

Examples:

- aws_vpc
- aws_subnet
- aws_instance
- aws_lb

## Data Source

A data source reads information without creating the referenced object.

Example:

Read the latest suitable AMI.

## Variable

A variable allows external values to be passed into Terraform configuration.

## Local Value

A local value simplifies repeated expressions inside configuration.

## Output

An output exposes useful values after Terraform execution.

Examples:

- VPC ID
- ALB DNS name
- EC2 instance IDs

## Module

A module is a reusable group of Terraform configuration.

Benefits:

- Reuse
- Standardization
- Encapsulation
- Reduced duplication

## Root Module

The root module is the Terraform configuration executed directly.

## Child Module

A child module is called by another module.

## Terraform State

Terraform state maps configuration resource addresses to real infrastructure objects.

State can contain sensitive information and must be protected.

## Remote Backend

A remote backend stores Terraform state outside the local working directory.

Benefits:

- Centralized state
- Team collaboration
- Controlled access
- Backup and recovery support

## State Locking

State locking prevents conflicting concurrent Terraform state operations.

Locking protects against multiple writers changing the same state simultaneously.

## S3 Native Locking

The S3 backend can use a lock file when configured with:

use_lockfile = true

## State Versioning

S3 bucket versioning preserves earlier object versions and supports recovery from accidental modification or deletion.

## Terraform Workflow

- Write
- Format
- Initialize
- Validate
- Plan
- Review
- Apply
- Observe
- Improve

## terraform init

Initializes:

- Backend
- Providers
- Modules

## terraform fmt

Formats Terraform configuration.

## terraform validate

Checks the internal syntax and consistency of configuration.

## terraform plan

Shows proposed infrastructure changes.

It does not approve business impact automatically.

Engineers must review:

- Resources created
- Resources updated
- Resources replaced
- Resources destroyed
- Sensitive changes
- Security changes
- Cost impact

## terraform apply

Executes the reviewed infrastructure changes.

## terraform destroy

Creates and applies a plan that removes managed infrastructure.

Destruction must be reviewed carefully.

## Dependency Graph

Terraform builds a dependency graph to determine resource operation order.

References normally create implicit dependencies.

## Drift

Drift occurs when real infrastructure differs from managed configuration and recorded state.

Causes:

- Manual console changes
- External automation
- Failed operations
- Provider-side changes

## Import

Import associates an existing infrastructure object with a Terraform resource address.

Import does not automatically create a complete production-ready configuration.

## State Move

State move changes a resource address without recreating the real object when used correctly.

## Replacement

Some property changes require a resource to be destroyed and recreated.

Plan review must identify replacement operations.

## Idempotent Outcome

After successful apply, a repeated plan should normally show no unintended changes when configuration and infrastructure remain unchanged.

## Provider Version Constraint

Version constraints reduce unplanned provider changes.

Provider upgrades must be reviewed and tested.

## Validation Before Production

Production workflows should include:

- Formatting check
- Validation
- Plan generation
- Plan review
- Security review
- Cost review
- Approval
- Controlled apply
- Post-apply health validation
