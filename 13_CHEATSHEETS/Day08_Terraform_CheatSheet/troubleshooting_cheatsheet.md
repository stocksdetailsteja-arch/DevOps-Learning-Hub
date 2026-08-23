# Terraform Troubleshooting Cheat Sheet

## terraform init Fails

Check:

- Provider Access
- Internet
- Backend Configuration
- Credentials

## Authentication Failure

Check:

aws sts get-caller-identity

Verify:

- IAM Role
- Access
- Region

Your Terraform workbook recommends validating provider authentication and permissions. 【1-f94532】【2-b80fc3】

## State Lock Error

Check:

- Active Terraform Apply
- CI/CD Job
- Existing Lock

Investigate before unlocking.

The workbook recommends checking state lock issues during troubleshooting. 【1-f94532】【2-b80fc3】

## Unexpected Resource Changes

Check:

terraform plan

Review:

- Workspace
- State
- Variables
- Provider

## Resource Already Exists

Check:

terraform import

Review:

- Resource Ownership
- Existing State

## Drift Detected

Check:

terraform plan -refresh-only

Investigate:

- Manual Console Changes
- Configuration Differences

The workbook recommends imports and avoiding manual console changes. 【1-f94532】【2-b80fc3】

## Apply Failure

Check:

- Dependencies
- Cloud Quotas
- Provider Errors
- Logs

## Destroy Failure

Check:

- Dependencies
- Resource Protection
- Permissions

## Module Issue

Check:

terraform init

terraform validate

Verify:

- Input Variables
- Outputs
- Versions

## Secrets Exposed

Immediately:

- Rotate Secret
- Remove Secret
- Use Secret Manager

Your workbook states secrets should not be stored in .tf files and recommends CI secret stores and environment credentials. 【1-f94532】【2-b80fc3】

## Recovery Strategy

- Backup State
- Review Plan
- Apply Controlled Change
- Validate Resources

The workbook recommends state backups, versioning and small controlled changes. 【1-f94532】【2-b80fc3】

## Production Investigation Flow

Alert

↓

Plan Review

↓

State Review

↓

Provider Logs

↓

Cloud Events

↓

Root Cause

↓

Fix

↓

Validation

This aligns with the workbook recommendation to inspect plans, state, provider logs and cloud resource events. 【1-f94532】【2-b80fc3】
