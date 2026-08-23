# Day 08 - Lab Notes

## Environment

Cloud Provider:

Document Here

Operating System:

Document Here

## Terraform Information

Terraform Version:

Document Here

Provider Version:

Document Here

Backend:

Document Here

State Key:

Document Here

Do not record confidential identifiers or credentials.

## Terraform Validation

Formatting Result:

Document Here

Validation Result:

Document Here

Plan Result:

Document Here

## Plan Review

Resources Added:

Document Here

Resources Updated:

Document Here

Resources Replaced:

Document Here

Resources Destroyed:

Document Here

Unexpected Changes:

Document Here

## Drift Exercise

Change Introduced:

Document Here

Terraform Detection:

Document Here

Resolution:

Document Here

Prevention:

Document Here

## Import Exercise

Resource Address:

Document Here

Import Result:

Document Here

Post-Import Plan:

Document Here

## Ansible Information

Ansible Version:

Document Here

Inventory:

Document Here

Control Node:

Document Here

Managed Nodes:

Document Here

## Connectivity Result

Reachable Hosts:

Document Here

Unreachable Hosts:

Document Here

## Playbook Validation

Syntax Check:

Document Here

Check Mode:

Document Here

Diff Review:

Document Here

## Idempotency Result

First Run Changes:

Document Here

Second Run Changes:

Document Here

Unexpected Repeated Changes:

Document Here

## Handler Validation

Change That Triggered Handler:

Document Here

Handler Result:

Document Here

Service Validation:

Document Here

## Vault Validation

Vault File:

Document Here

Encryption Result:

Document Here

Do not document the Vault password or secret values.

## Failure Scenario

### Symptom

Document Here

### Impact

Document Here

### Evidence

Document Here

### Root Cause

Document the verified cause.

### Resolution

Document Here

### Validation

Document Here

### Prevention

Document Here

## Key Learnings

- Terraform state is critical operational data.
- Plans must be reviewed before apply.
- Remote state needs access control, locking and recovery.
- Import requires matching configuration.
- Ansible inventory must be validated before execution.
- Modules are preferred over uncontrolled shell commands.
- Check mode helps predict supported changes.
- Idempotency must be verified with repeated execution.
- Risky changes should use host limits and serial batches.
- Secrets must not be committed.
