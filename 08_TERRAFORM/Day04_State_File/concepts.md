# Day 04 - Terraform State Concepts

## What Is Terraform State?

Terraform State is a file used by Terraform to track infrastructure resources.

Terraform stores infrastructure information inside:

terraform.tfstate

Purpose:

- Infrastructure Tracking

- Resource Mapping

- Change Detection

- Dependency Resolution

State management is a core Terraform capability.

## Why Is State Required?

Without State:

Terraform

↓

Cannot Track Resources

↓

Cannot Detect Changes

↓

Cannot Manage Infrastructure Properly

With State:

Terraform

↓

Knows Existing Resources

↓

Plans Accurate Changes

↓

Manages Infrastructure Lifecycle

## State Architecture

Terraform Configuration

↓

Terraform State

↓

Provider

↓

Cloud API

↓

Infrastructure

## What Is terraform.tfstate?

Default Terraform State File.

Contains:

- Resource IDs

- Attributes

- Metadata

- Dependencies

Terraform uses this information during plan and apply operations.

## State Workflow

terraform apply

↓

Infrastructure Created

↓

State Updated

↓

Resource Mapping Saved

## Why State Is Important?

Benefits:

- Infrastructure Tracking

- Drift Detection

- Dependency Management

- Faster Execution

- Accurate Planning

## State File Example

Terraform Resource

↓

AWS EC2 Instance

↓

Instance ID Stored

↓

Future Changes Tracked

## State Locking

Purpose:

Prevent Multiple Users From Modifying State Simultaneously.

Example:

User A

↓

Terraform Apply

↓

State Locked

↓

User B Cannot Modify

State locking becomes especially important in team environments.

## State Security

State files can contain infrastructure details.

Potential Information:

- Resource IDs

- IP Addresses

- Infrastructure Metadata

State files should be protected and access controlled.

## Local State

Stored On:

Local Machine

File:

terraform.tfstate

Benefits:

- Simple

- Easy Setup

Limitations:

- Not Good For Teams

## Remote State (Preview)

Stored In:

S3

Azure Storage

GCS

Benefits:

- Collaboration

- Centralized Storage

- State Locking

Remote state will be covered later.

## Real World Example

Terraform

↓

Create EC2

↓

Store EC2 Details

↓

terraform.tfstate

↓

Future Updates Managed Correctly

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
