# Terraform And Ansible Interview Questions

# Terraform Beginner Questions

## What Is Terraform?

Terraform is an Infrastructure as Code tool used to create and manage infrastructure through declarative configuration.

## What Is Infrastructure As Code?

Infrastructure as Code manages infrastructure using version-controlled configuration.

## What Is A Provider?

A provider connects Terraform to an external API or platform.

## What Is A Resource?

A resource is an infrastructure object managed by Terraform.

## What Is A Variable?

A variable supplies configurable input to Terraform.

## What Is An Output?

An output exposes useful information from Terraform configuration.

## What Is A Module?

A module is a reusable collection of Terraform configuration.

# Terraform Intermediate Questions

## What Is Terraform State?

Terraform state maps Terraform resource addresses to real infrastructure objects.

## Why Use Remote State?

Remote state supports centralized access, collaboration, backup and locking.

## What Is State Locking?

State locking prevents concurrent state-changing operations from writing to the same state.

## What Does terraform init Do?

It initializes:

- Backend
- Providers
- Modules

## What Does terraform validate Do?

It validates the internal consistency of Terraform configuration.

## What Does terraform plan Do?

It calculates proposed infrastructure changes for review.

## What Is Drift?

Drift is a difference between intended configuration and actual infrastructure.

## What Is Import?

Import associates an existing object with a Terraform resource address.

## count Versus for_each?

count uses numeric indexes.

for_each uses keys from a map or set and can provide more stable resource identity.

## Implicit Versus Explicit Dependency?

Implicit dependency:

Created by an expression referencing another resource.

Explicit dependency:

Declared using depends_on when the dependency is not otherwise visible.

# Terraform Advanced Questions

## Terraform Plan Proposes Unexpected Destruction. What Do You Do?

Do not apply.

Check:

- Correct account
- Correct Region
- Correct workspace
- Correct backend
- State resource addresses
- Removed configuration
- Module path changes
- count indexes
- for_each keys
- Provider upgrade
- Imported resources
- Recent state operations

## Terraform Apply Failed Halfway. How Do You Recover?

- Preserve state
- Capture the original error
- Check whether the lock was released
- Inspect state resources
- Inspect actual cloud resources
- Correct the confirmed root cause
- Run a new plan
- Review remaining actions
- Apply only after approval
- Validate infrastructure and application health

## How Do You Handle A Stale State Lock?

- Confirm no operation is active
- Check CI/CD jobs
- Check operator sessions
- Identify the lock owner
- Preserve logs
- Obtain approval
- Use force-unlock only for a confirmed stale lock
- Run a new plan afterward

## How Do You Protect Terraform State?

- Remote backend
- Encryption
- Versioning
- State locking
- Least-privilege access
- Audit logging
- Environment separation
- Backup and recovery
- Restricted deletion

## How Do You Avoid Configuration Drift?

- Use remote state
- Use state locking
- Restrict manual changes
- Use Git reviews
- Run scheduled plans
- Import approved existing resources
- Reconcile emergency changes

Your internal Terraform workbook recommends remote state, locking, reviews and imports instead of unmanaged console changes. 【1-521d49】【2-499502】

## How Do You Handle Secrets In Terraform?

- Never hardcode access keys
- Use temporary environment credentials
- Use CI/CD secret stores
- Use approved secret managers
- Restrict state access
- Avoid exposing sensitive outputs
- Rotate exposed credentials

Your internal Terraform workbook recommends CI secret stores and environment credentials and states that keys should not be stored in `.tf` files. 【1-521d49】【2-499502】

## How Do You Roll Back Terraform?

Terraform does not provide one universal automatic rollback for every infrastructure change.

A controlled recovery may include:

- Restore or revert configuration
- Produce a reverse plan
- Review destruction and replacement
- Apply the reviewed reverse plan
- Restore persistent data separately when required
- Recover state from a verified backup when state is damaged
- Validate infrastructure afterward

## Why Is Manual State Editing Dangerous?

Incorrect state changes can break the mapping between configuration and real infrastructure.

Prefer supported Terraform state commands and reviewed recovery methods.

## How Do You Refactor Without Recreating Resources?

- Preserve resource addresses
- Use moved blocks where appropriate
- Test in non-production
- Review the plan
- Separate structural and functional changes
- Back up state
- Apply carefully

## How Would You Design Terraform For Multiple Environments?

- Reuse modules
- Separate state
- Use environment-specific inputs
- Use separate identities when necessary
- Use consistent naming and tags
- Protect production applies
- Validate plans independently

## How Would You Use Terraform In CI/CD?

Pipeline stages:

- Checkout
- Format check
- Validate
- Security scan
- Plan
- Publish plan
- Human approval
- Apply reviewed plan
- Post-apply validation
- Evidence retention

# Ansible Beginner Questions

## What Is Ansible?

Ansible is an automation tool used for configuration management and application deployment.

## What Is Inventory?

Inventory defines managed hosts and groups.

## What Is An Ad-Hoc Command?

An ad-hoc command performs a quick one-time operation.

## What Is A Playbook?

A playbook is a YAML automation definition.

## What Is A Task?

A task invokes an Ansible module.

## What Is A Module?

A module performs a specific operation on managed nodes.

## What Is A Role?

A role organizes reusable tasks, handlers, templates, files and variables.

# Ansible Intermediate Questions

## Why Prefer Modules Over shell Or command?

Purpose-built modules usually understand desired state and return structured results.

Shell commands may require custom idempotency and error handling.

## What Are Facts?

Facts are collected details about managed hosts.

## What Does register Do?

register stores a task result for later use.

## What Is A Handler?

A handler runs when notified, usually after a relevant task reports changed.

## What Is A Jinja2 Template?

A Jinja2 template combines static content with variables and expressions to generate a managed file.

## What Is Variable Precedence?

Variable precedence determines which value wins when a variable is defined in multiple places.

## What Is Ansible Vault?

Ansible Vault encrypts sensitive Ansible data.

## What Is Check Mode?

Check mode predicts supported changes without intentionally applying them.

## What Is Idempotency?

Repeated execution should maintain the intended state without unnecessary changes.

# Ansible Advanced Questions

## Ansible Host Is UNREACHABLE. What Do You Check?

- Inventory address
- SSH port
- Route
- Security Group
- Firewall
- Remote username
- Private key permissions
- Host-key trust
- SSH service
- Bastion or proxy configuration

This matches the unreachable-host checklist in your internal Ansible workbook. 【3-83aac3】【4-24be3c】

## Task Fails With Permission Denied. What Do You Check?

- Remote user permissions
- become configuration
- sudo access
- File ownership
- Directory permissions
- Target path
- Security controls
- Filesystem state

This follows the permission-denied guidance in your internal Ansible workbook. 【3-83aac3】【4-24be3c】

## A Playbook Always Reports Changed. Why Is That A Concern?

It may indicate:

- A non-idempotent task
- An uncontrolled shell command
- Incorrect changed_when logic
- A generated file changing on every run
- A handler triggering unnecessarily
- A service restarting repeatedly

Your internal Ansible workbook specifically identifies repeated changed results as a possible sign of non-idempotent tasks or raw commands without correct `changed_when` handling. 【3-83aac3】【4-24be3c】

## How Do You Troubleshoot An Ansible Failure?

- Validate inventory
- Test connectivity
- Run syntax check
- Review task output
- Run with verbosity
- Inspect variables
- Inspect module result
- Check privilege escalation
- Check target logs
- Check service health
- Re-run against one host

## How Do You Control A Risky Production Rollout?

- Syntax check
- Check mode
- Diff review
- Host limit
- Serial batches
- Tags
- Validation tasks
- Health checks
- Pause or approval
- Rollback procedure
- Monitoring

Your internal Ansible workbook recommends check mode, diff, limits, serial batches, tags, validation tasks and health checks for risky rollouts. 【3-83aac3】【4-24be3c】

## How Do You Protect Ansible Secrets?

- Use Ansible Vault or approved secret manager
- Restrict file access
- Do not commit plaintext values
- Protect Vault-password material
- Avoid printing secrets
- Review diff output
- Rotate exposed credentials

Your internal Ansible workbook recommends Vault or an approved secret manager, restricted access and avoiding plaintext credentials in Git. 【3-83aac3】【4-24be3c】

## How Do You Design Reusable Ansible Automation?

- Use roles
- Keep defaults configurable
- Use clear variable names
- Use templates
- Use handlers
- Use tags
- Validate input
- Separate environment inventory
- Avoid hardcoded host values
- Document dependencies

## Terraform Versus Ansible?

Terraform focuses on infrastructure provisioning and state-based resource management.

Ansible focuses on system configuration and application deployment.

They complement each other in a complete automation workflow. 【6-549b68】

## Explain A Production Incident.

Situation:

An Ansible rollout succeeded on the first server but failed on later servers.

Investigation:

- Connection was healthy
- Package task succeeded
- Template changed
- Handler restarted the service
- Health check failed

Root Cause:

The generated configuration referenced an environment-specific dependency unavailable to those servers.

Resolution:

- Stopped the rollout
- Restored the previous template
- Re-ran against one host
- Validated service health
- Continued in small serial batches
- Added pre-deployment dependency validation

## Explain Terraform And Ansible In A Project Interview.

Situation:

Cloud infrastructure and server configuration were manually managed.

Task:

Create a repeatable provisioning and configuration workflow.

Action:

Used Terraform modules to provision networking, compute and security resources.

Stored state remotely, reviewed plans, enabled locking and documented drift and recovery procedures.

Used Ansible inventories, roles, templates, handlers, Vault, check mode and controlled batches to configure servers and deploy applications.

Result:

Created a version-controlled automation workflow with reusable components, validation, rollback guidance and production troubleshooting evidence.
