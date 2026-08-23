# Terraform And Ansible Interview Concepts

# Terraform Concepts

## Infrastructure As Code

Infrastructure as Code manages infrastructure using version-controlled configuration instead of undocumented manual operations.

## Declarative Configuration

Terraform configuration describes the required end state.

Terraform determines which actions are required to reach that state.

## Terraform Workflow

Write

↓

Format

↓

Initialize

↓

Validate

↓

Plan

↓

Review

↓

Apply

↓

Verify

↓

Monitor

## Provider

A provider enables Terraform to communicate with an external platform.

Examples:

- AWS
- Azure
- Kubernetes
- GitHub

## Resource

A resource represents an infrastructure object managed by Terraform.

Examples:

- VPC
- Subnet
- EC2 instance
- Security Group
- Load Balancer

## Data Source

A data source reads information without managing the referenced object.

## Input Variable

An input variable allows configuration values to be supplied externally.

## Local Value

A local value simplifies repeated expressions within a module.

## Output

An output exposes useful values.

Examples:

- VPC ID
- Instance IP
- Load Balancer DNS name

## Module

A module is a reusable collection of Terraform configuration.

Benefits:

- Reusability
- Standardization
- Encapsulation
- Reduced duplication
- Consistent security controls

## Root Module

The root module is the configuration executed directly.

## Child Module

A child module is called by another module.

## Terraform State

Terraform state maps Terraform resource addresses to real infrastructure objects.

State is operationally important and may contain sensitive information.

## Local State

Local state is stored in the working directory.

It is not preferred for shared production workflows.

## Remote State

Remote state stores state outside the local working directory.

Benefits:

- Team access
- Centralized control
- Backup
- State locking
- Auditability

## State Locking

State locking prevents concurrent state-changing operations from modifying the same state.

## Terraform Plan

A plan shows proposed changes.

Review:

- Resources created
- Resources updated
- Resources replaced
- Resources destroyed
- Security impact
- Cost impact
- Dependency impact

## Saved Plan

A saved plan allows the reviewed set of changes to be passed to apply.

## Drift

Drift is the difference between intended configuration and actual infrastructure.

Common causes:

- Manual console changes
- External automation
- Failed operations
- Incorrect environment selection

## Import

Import associates an existing infrastructure object with a Terraform resource address.

The matching Terraform configuration must still be written and reviewed.

## Dependency Graph

Terraform uses references and dependencies to determine resource operation order.

## Implicit Dependency

A resource reference normally creates an implicit dependency.

## Explicit Dependency

depends_on can express a dependency not visible through normal references.

## count

count creates multiple resource instances using numeric indexes.

## for_each

for_each creates resource instances using stable set or map keys.

## Lifecycle Rules

Lifecycle configuration can influence resource replacement and destruction behaviour.

Important examples:

- create_before_destroy
- prevent_destroy
- ignore_changes

Lifecycle rules must be used carefully because they can hide or alter expected change behaviour.

## Workspace

A Terraform workspace provides another state instance for the same configuration.

Environment strategy must account for isolation, access controls and operational risk.

## Sensitive Values

Marking a Terraform value as sensitive reduces normal display.

It does not guarantee that the value is absent from state.

## Configuration Drift Prevention

Use:

- Git
- Remote state
- State locking
- Plan review
- Restricted console changes
- CI/CD
- Imports
- Policy controls

# Ansible Concepts

## Ansible Architecture

Ansible Control Node

↓

Inventory

↓

SSH Or Supported Connection

↓

Managed Nodes

↓

Modules

↓

Desired Configuration

## Control Node

The control node runs Ansible commands and playbooks.

## Managed Node

A managed node is a target system configured by Ansible.

## Agentless Model

Ansible commonly connects to managed Linux hosts using SSH without requiring a persistent Ansible agent.

## Inventory

Inventory defines managed hosts and groups.

Inventory may include:

- Hostname
- Address
- Connection user
- Connection port
- Group membership
- Host variables

## Static Inventory

Static inventory contains explicitly defined hosts.

## Dynamic Inventory

Dynamic inventory discovers hosts from an external source.

## Ad-Hoc Command

An ad-hoc command performs a quick one-time operation.

## Playbook

A playbook is a YAML automation definition containing one or more plays.

## Play

A play maps tasks or roles to a group of hosts.

## Task

A task invokes an Ansible module with arguments.

## Module

A module performs a specific operation.

Examples:

- package
- service
- user
- file
- copy
- template

## Idempotency

An idempotent task reaches the same intended state without reporting unnecessary changes on repeated runs.

## Variable

Variables make automation reusable across hosts and environments.

## Fact

Facts provide information collected from managed hosts.

Examples:

- Operating system
- Network interfaces
- Processor information
- Memory information

## register

register stores a task result in a variable for later processing.

## Condition

A when condition controls whether a task executes.

## Loop

A loop repeats a task for a collection of values.

## Template

A Jinja2 template generates a target configuration file using variables and expressions.

## Handler

A handler runs when notified by a changed task.

Common use:

- Restart service
- Reload configuration

## Role

A role packages related automation using a standard structure.

Common directories:

- tasks
- handlers
- templates
- files
- defaults
- vars
- meta

## Role Defaults

Role defaults contain low-precedence default values.

## Role Variables

Role variables contain values with higher precedence than defaults.

## Variable Precedence

Variable precedence determines which value Ansible uses when the same variable is defined in several locations.

## Ansible Vault

Ansible Vault encrypts sensitive Ansible data.

Passwords and Vault password files must not be committed to Git.

## become

Privilege escalation allows approved tasks to run with elevated privileges.

## Check Mode

Check mode predicts changes without intentionally applying supported changes.

Check mode is not a complete replacement for testing.

## Diff Mode

Diff mode can display changes to supported files and templates.

Sensitive information must not be exposed through diff output.

## Tags

Tags allow selected portions of a playbook to run.

## Limit

A host limit restricts execution to selected inventory hosts.

## Serial Execution

serial controls how many hosts are processed in a batch.

## Configuration Drift

Ansible drift is the difference between intended automated configuration and actual managed-node state.

## Terraform Versus Ansible

Terraform primarily provisions and manages infrastructure resources.

Ansible primarily configures systems and deploys applications.

They can be used together in an end-to-end automation workflow.
