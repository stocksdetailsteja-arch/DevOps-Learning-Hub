
You said:
Day03_Variables_Outputs
Copilot said:
Perfect Sai ✅

Your workbook defines Day 3 as Variables + Outputs, focusing on Input Variables, Local Variables, Output Variables, tfvars Files, Parameterized Code, and Sensitive Variables. The hands-on objective is to make Terraform configurations reusable by replacing hardcoded values with variables. Terraform variables help parameterize infrastructure while outputs expose important infrastructure details after deployment.
+1

IMPORTANT: Remove only the \ before # and - while copying.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

README.md
# Day 03 - Variables & Outputs

## Overview

This module covers Terraform Variables, Output Variables, Local Variables, tfvars Files, Sensitive Variables, and Configuration Parameterization.

Variables make Terraform code reusable and flexible by allowing values to be supplied dynamically rather than being hardcoded.

Outputs help expose useful information such as IP addresses, instance IDs, and resource details after deployment. Terraform Day 3 focuses on input types, locals, outputs, and parameterized code.
+1

## Learning Objectives

- Understand Input Variables

- Understand Output Variables

- Understand Local Variables

- Understand tfvars Files

- Understand Sensitive Variables

- Parameterize Terraform Code

- Build Reusable Infrastructure

- Reduce Hardcoded Configuration

## Topics Covered

- Input Variables

- Output Variables

- Local Variables

- tfvars Files

- Variable Validation

- Sensitive Variables

- Parameterization

## DevOps Relevance

Used In:

- Multi Environment Deployments

- CI/CD Pipelines

- Reusable Infrastructure

- Enterprise Automation

- Team Collaboration

## Files In This Module

- README.md

- concepts.md

- commands.md

- lab_notes.md

- interview_questions.md

- troubleshooting.md

- summary.md

- practise_session.md

- Day03_Variables_Outputs_Lab_Screenshots/

## Next Module

Day04_State_File

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

concepts.md
# Day 03 - Variables & Outputs Concepts

## Why Variables?

Without Variables:

Instance Type Hardcoded

Region Hardcoded

Environment Hardcoded

Result:

Poor Reusability

With Variables:

Code Reusable

Different Environments Supported

Easier Maintenance

The workbook Day 3 objective is parameterizing infrastructure code using variables and outputs.
+1

## What Is An Input Variable?

Input Variables allow users to pass values into Terraform configurations.

Example:

Environment

Region

Instance Type

Project Name

## Input Variable Flow

User Input

↓

Variable

↓

Terraform Configuration

↓

Infrastructure

## Variable Block

Example:

variable "instance_type" {

type = string

}

Purpose:

Accept Dynamic Input.

## Variable Types

String
Example:

"t2.micro"

Number
Example:

2

Boolean
Example:

true

false

List
Example:

["dev","qa","prod"]

Map
Example:

{ env = "dev" }

## Local Variables

Locals simplify repetitive values.

Example:

locals {

environment = "dev"

}

Benefits:

- Cleaner Code

- Reusability

- Better Readability

The workbook explicitly includes locals as a Day 3 topic.
+1

## tfvars Files

Terraform supports variable files.

Example:

terraform.tfvars

Purpose:

Separate configuration from code.

Benefits:

- Environment Specific Values

- Easier Configuration Management

## Sensitive Variables

Used For:

- Passwords

- Tokens

- API Keys

Sensitive variables help avoid displaying confidential values in output.

## Output Variables

Output variables expose useful infrastructure values.

Examples:

- Public IP

- Instance ID

- DNS Name

- VPC ID

The workbook explicitly includes outputs as a Day 3 learning objective.
+1

## Output Flow

Infrastructure

↓

Output Block

↓

Displayed To User

## Real World Example

Terraform

↓

Create EC2

↓

Output Public IP

↓

Used By Team

## Enterprise Usage

Development

↓

QA

↓

UAT

↓

Production

Same Code

↓

Different tfvars Files

↓

Different Infrastructure

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

commands.md
# Day 03 - Variables & Outputs Commands

## Initialize Terraform

terraform init

Screenshot:

01_terraform_init.png

## Validate Configuration

terraform validate

Screenshot:

02_validate.png

## Format Terraform Code

terraform fmt

Screenshot:

03_fmt.png

## View Execution Plan

terraform plan

Screenshot:

04_plan.png

## Use Variable File

terraform plan -var-file="terraform.tfvars"

Screenshot:

05_var_file.png

## Override Variable

terraform plan -var="instance_type=t2.micro"

Screenshot:

06_override_variable.png

## Apply Infrastructure

terraform apply

Screenshot:

07_apply.png

## View Outputs

terraform output

Screenshot:

08_outputs.png

## View Specific Output

terraform output instance_public_ip

Screenshot:

09_specific_output.png

## Destroy Infrastructure

terraform destroy

Screenshot:

10_destroy.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

practise_session.md
# Day 03 - Variables & Outputs Practice Session

## Lab Setup

Use:

- Ubuntu EC2

- Terraform Installed

- AWS Account

## Lab 1

Create variables.tf

Screenshot:

01_variables_file.png

## Lab 2

Create terraform.tfvars

Screenshot:

02_tfvars_file.png

## Lab 3

Create outputs.tf

Screenshot:

03_outputs_file.png

## Lab 4

Initialize Terraform

Screenshot:

04_init.png

## Lab 5

Validate Configuration

Screenshot:

05_validate.png

## Lab 6

Run Plan

Screenshot:

06_plan.png

## Lab 7

Apply Infrastructure

Screenshot:

07_apply.png

## Lab 8

Verify Outputs

Screenshot:

08_verify_outputs.png

## Lab 9

Override Variable

Screenshot:

09_override_variable.png

## Lab 10

Day Completion

Screenshot:

10_day03_completion.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

lab_notes.md
# Day 03 - Lab Notes

## Objective

Learn Terraform Variables and Outputs.

## Services Used

- Terraform

- EC2

- Variables

- Outputs

## Observations

- Variables improve flexibility.

- tfvars files simplify configuration.

- Outputs expose useful data.

- Infrastructure becomes reusable.

## Results

Successfully parameterized Terraform configuration.

## Lessons Learned

- Avoid hardcoded values.

- Use tfvars for environments.

- Outputs are useful for automation.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

interview_questions.md
# Day 03 - Interview Questions

## Basic

### Q1 What Is A Variable In Terraform?

A mechanism for passing values into infrastructure configurations.
+1

### Q2 Why Use Variables?

To make code reusable and configurable.

### Q3 What Is A tfvars File?

File used to supply variable values.

### Q4 What Is An Output Variable?

Used to display infrastructure information after deployment.

## Intermediate

### Q1 Difference Between Variables And Locals?

Variables:

External Input

Locals:

Internal Calculated Values

### Q2 Why Use Sensitive Variables?

Protect confidential information.

### Q3 Why Use Outputs?

Share infrastructure details with users and pipelines.

## Advanced (5+ Years)

### Q1 Why Do Enterprises Use Variables Heavily?

Answer:

- Environment Separation

- Code Reuse

- Standardization

- Automation

### Q2 How Would You Manage Dev, QA, And Prod?

Answer:

Same Terraform Code

↓

Different tfvars Files

↓

Different Environments

### Q3 Why Avoid Hardcoding Values?

Answer:

Improves Flexibility And Maintainability.

### Q4 Outputs Not Displayed. What Will You Check?

Answer:

Output Block

Apply Execution

Terraform State

Resource Availability

### Q5 How Do Variables Improve CI/CD?

Answer:

Pipelines can pass different values dynamically.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

troubleshooting.md
# Day 03 - Variables & Outputs Troubleshooting

## Scenario 1

Variable Not Defined

Cause:

Missing Variable Declaration

Resolution:

Review variables.tf

## Scenario 2

Missing tfvars Value

Cause:

Value Not Supplied

Resolution:

Review terraform.tfvars

## Scenario 3

Output Not Displayed

Cause:

Output Block Missing

Resolution:

Review outputs.tf

## Scenario 4

Sensitive Value Exposed

Cause:

Sensitive Flag Missing

Resolution:

Use sensitive = true

## Scenario 5 (5+ Years)

Wrong Environment Created

Investigation:

- tfvars File

- Pipeline Parameters

Resolution:

Verify Variable Mapping.

## Scenario 6 (5+ Years)

CI/CD Variable Failure

Investigation:

- Variable Names

- Secret Stores

- Pipeline Configuration

Resolution:

Review Pipeline Variables.

## Scenario 7 (5+ Years)

Infrastructure Using Unexpected Values

Investigation:

- Default Values

- tfvars

- Command Line Variables

Resolution:

Review Variable Precedence.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

summary.md
# Day 03 - Summary

## Topics Covered

- Input Variables

- Local Variables

- Output Variables

- tfvars Files

- Sensitive Variables

## Commands Learned

- terraform plan -var

- terraform plan -var-file

- terraform output

## Quick Revision

Variable → User Input

Local → Internal Value

tfvars → Variable File

Output → Infrastructure Information

Sensitive → Secret Protection

## Production Notes

- Avoid Hardcoding

- Use tfvars Per Environment

- Protect Secrets

- Standardize Variables

## Key Takeaways

- Variables make code reusable.

- Outputs expose infrastructure details.

- tfvars files simplify environment management.

- Sensitive variables protect secrets.

## Next Topic

Day04_State_File

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Day03_Variables_Outputs_Lab_Screenshots
- 01_variables_file.png

- 02_tfvars_file.png

- 03_outputs_file.png

- 04_init.png

- 05_validate.png

- 06_plan.png

- 07_apply.png

- 08_verify_outputs.png

- 09_override_variable.png

- 10_day03_completion.png

- 11_variable_types.png

- 12_local_variables.png

- 13_sensitive_variables.png

- 14_output_validation.png

- 15_day03_completion_final.png

✅ Day03_Variables_Outputs Complete

🚀 Next: Day04_State_File (Terraform State, terraform.tfstate, State Locking, State Security, State Commands, State Management, and Production State Best Practices).





Sources
You said:
Day04_State_File
Copilot said:
Perfect Sai ✅

Your workbook defines Day 4 as Terraform State, focusing on State Purpose, terraform.tfstate, State Management, State Security, State Locking, and State Inspection. The Day 4 hands-on task is inspecting state and understanding why state is one of the most critical Terraform concepts.
+1

IMPORTANT: Remove only the \ before # and - while copying.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

README.md
# Day 04 - Terraform State File

## Overview

This module covers Terraform State, terraform.tfstate, State Management, State Locking, State Security, State Commands, and Infrastructure Tracking.

Terraform State is the mechanism Terraform uses to track infrastructure resources and maintain mappings between Terraform configuration and actual cloud infrastructure.

## Learning Objectives

- Understand Terraform State

- Understand terraform.tfstate

- Understand State Management

- Understand State Locking

- Understand State Security

- Inspect State Information

- Troubleshoot State Issues

- Understand Enterprise State Management

## Topics Covered

- Terraform State

- terraform.tfstate

- State Locking

- State Commands

- State Security

- State Management

- Infrastructure Tracking

## DevOps Relevance

Used In:

- AWS Infrastructure

- Azure Infrastructure

- GCP Infrastructure

- Enterprise Automation

- Team Collaboration

- CI/CD Pipelines

## Files In This Module

- README.md

- concepts.md

- commands.md

- lab_notes.md

- interview_questions.md

- troubleshooting.md

- summary.md

- practise_session.md

- Day04_State_File_Lab_Screenshots/

## Next Module

Day05_Modules

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

concepts.md
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
+1

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

commands.md
# Day 04 - Terraform State Commands

## Initialize Terraform

terraform init

Screenshot:

01_terraform_init.png

## View State Information

terraform show

Screenshot:

02_terraform_show.png

## List State Resources

terraform state list

Screenshot:

03_state_list.png

## View Specific Resource

terraform state show RESOURCE_NAME

Screenshot:

04_state_show_resource.png

## Pull State

terraform state pull

Screenshot:

05_state_pull.png

## Refresh State

terraform refresh

Screenshot:

06_state_refresh.png

## View State File

cat terraform.tfstate

Screenshot:

07_tfstate_file.png

## Validate Infrastructure

terraform plan

Screenshot:

08_terraform_plan.png

## View Providers

terraform providers

Screenshot:

09_providers.png

## Backup State File

cp terraform.tfstate terraform.tfstate.backup

Screenshot:

10_state_backup.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

practise_session.md
# Day 04 - Terraform State Practice Session

## Lab Setup

Use:

- Ubuntu EC2

- Terraform Installed

- Existing EC2 Resource

## Lab 1

Apply Terraform Infrastructure

Screenshot:

01_apply.png

## Lab 2

View terraform.tfstate

Screenshot:

02_tfstate_view.png

## Lab 3

Review Resource Details

Screenshot:

03_resource_details.png

## Lab 4

Run terraform show

Screenshot:

04_terraform_show.png

## Lab 5

Run terraform state list

Screenshot:

05_state_list.png

## Lab 6

Run terraform state show

Screenshot:

06_state_show.png

## Lab 7

Backup State File

Screenshot:

07_backup_state.png

## Lab 8

Review State Architecture

Screenshot:

08_state_architecture.png

## Lab 9

Document Learning Notes

Screenshot:

09_learning_notes.png

## Lab 10

Day Completion

Screenshot:

10_day04_completion.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

lab_notes.md
# Day 04 - Lab Notes

## Objective

Understand Terraform State and infrastructure tracking.

## Services Used

- Terraform

- State File

- AWS

## Observations

- Terraform stores infrastructure metadata.

- State enables lifecycle management.

- Resource tracking depends on state.

- State is critical for accurate planning.

## Results

Successfully inspected Terraform State.

## Lessons Learned

- Never delete state accidentally.

- State controls infrastructure tracking.

- State security is important.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

interview_questions.md
# Day 04 - Interview Questions

## Basic

### Q1 What Is Terraform State?

Terraform State tracks infrastructure resources and mappings.
+1

### Q2 What Is terraform.tfstate?

Default state file used by Terraform.

### Q3 Why Does Terraform Need State?

To track infrastructure and detect changes.

### Q4 What Does terraform show Do?

Displays infrastructure information from state.

## Intermediate

### Q1 What Is State Locking?

Prevents multiple users from modifying state simultaneously.

### Q2 Difference Between Local And Remote State?

Local:

Stored Locally

Remote:

Stored Centrally

### Q3 Why Is State Important?

Tracks infrastructure and enables lifecycle management.

## Advanced (5+ Years)

### Q1 Why Is State Considered Critical?

Answer:

State is the source of truth for Terraform-managed infrastructure.

### Q2 What Happens If State Is Lost?

Answer:

Terraform may lose infrastructure tracking and resource mapping.

### Q3 Why Backup State Files?

Answer:

Protect Against Data Loss.

Support Recovery.

### Q4 Why Should Teams Avoid Local State?

Answer:

- Collaboration Issues

- No Locking

- Risk Of Conflicts

### Q5 How Do Enterprises Protect State Files?

Answer:

- Remote Storage

- Access Control

- Encryption

- Backup Strategy

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

troubleshooting.md
# Day 04 - Terraform State Troubleshooting

## Scenario 1

State File Missing

Cause:

Accidental Deletion

Resolution:

Restore From Backup.

## Scenario 2

terraform plan Shows Unexpected Changes

Cause:

Configuration Drift

Resolution:

Review Infrastructure And State.

## Scenario 3

State Corruption

Cause:

Manual Modification

Resolution:

Restore Backup State.

## Scenario 4

State Does Not Match Infrastructure

Cause:

Manual Resource Changes

Resolution:

Review Drift.

## Scenario 5 (5+ Years)

Multiple Engineers Modifying Infrastructure

Investigation:

- State Storage

- Locking

Resolution:

Implement Remote Backend.

## Scenario 6 (5+ Years)

Large Infrastructure State

Investigation:

- Resource Count

- State Management Strategy

Resolution:

Use Modular Design.

## Scenario 7 (5+ Years)

Production Infrastructure Drift

Investigation:

- State

- Cloud Resources

- Terraform Config

Resolution:

Review And Reconcile Infrastructure.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

summary.md
# Day 04 - Summary

## Topics Covered

- Terraform State

- terraform.tfstate

- State Locking

- State Security

- State Commands

## Commands Learned

- terraform show

- terraform state list

- terraform state show

- terraform state pull

- terraform refresh

## Quick Revision

State → Infrastructure Tracking

terraform.tfstate → State File

Locking → Conflict Prevention

Remote State → Team Collaboration

## Production Notes

- Protect State Files

- Backup State Regularly

- Avoid Manual Edits

- Use Remote Backends

## Key Takeaways

- State is the foundation of Terraform management.

- Terraform uses state to track resources.

- State security is critical.

- State locking improves collaboration.

## Next Topic

Day05_Modules

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Day04_State_File_Lab_Screenshots
- 01_apply.png

- 02_tfstate_view.png

- 03_resource_details.png

- 04_terraform_show.png

- 05_state_list.png

- 06_state_show.png

- 07_backup_state.png

- 08_state_architecture.png

- 09_learning_notes.png

- 10_day04_completion.png

- 11_state_file_structure.png

- 12_resource_tracking.png

- 13_state_workflow.png

- 14_state_security.png

- 15_day04_completion_final.png

✅ Day04_State_File Complete

🚀 Next: Day05_Modules (Terraform Modules, Reusable Infrastructure, Module Inputs, Module Outputs, Module Structure, Code Reusability, and Enterprise Terraform Design).





Sources
You said:
Day05_Modules
Copilot said:
Perfect Sai ✅

Your workbook defines Day 5 as Terraform Modules, focusing on Reusable Infrastructure Components, Module Inputs, Module Outputs, Module Structure, and Code Reusability. The Day 5 hands-on objective is creating reusable modules instead of duplicating Terraform code.
+1

IMPORTANT: Remove only the \ before # and - while copying.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

README.md
# Day 05 - Terraform Modules

## Overview

This module covers Terraform Modules, Reusable Infrastructure, Module Structure, Module Inputs, Module Outputs, Module Reusability, and Enterprise Terraform Design.

Modules are reusable building blocks that help organize Terraform code and eliminate duplication.

## Learning Objectives

- Understand Terraform Modules

- Create Reusable Infrastructure

- Understand Module Structure

- Use Module Inputs

- Use Module Outputs

- Build Modular Infrastructure

- Reduce Code Duplication

- Follow Enterprise Terraform Design

## Topics Covered

- Terraform Modules

- Module Structure

- Module Inputs

- Module Outputs

- Root Modules

- Child Modules

- Reusability

- Best Practices

## DevOps Relevance

Used In:

- AWS Infrastructure

- Azure Infrastructure

- Multi Environment Deployments

- Enterprise Terraform

- Infrastructure Standardization

## Files In This Module

- README.md

- concepts.md

- commands.md

- lab_notes.md

- interview_questions.md

- troubleshooting.md

- summary.md

- practise_session.md

- Day05_Modules_Lab_Screenshots/

## Next Module

Day06_Backends

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

concepts.md
# Day 05 - Terraform Modules Concepts

## What Is A Terraform Module?

A Terraform Module is a collection of Terraform configuration files grouped together for a specific purpose.

Examples:

- EC2 Module

- VPC Module

- Security Group Module

- S3 Module

Modules enable reusable infrastructure components.
+1

## Why Modules?

Without Modules:

Same EC2 Code

↓

Copied Multiple Times

↓

Hard To Maintain

With Modules:

Reusable Module

↓

Called Multiple Times

↓

Easy Maintenance

## Module Architecture

Root Module

↓

Child Module

↓

Terraform Resources

## Root Module

The main Terraform configuration.

Example:

main.tf

variables.tf

outputs.tf

## Child Module

Reusable Terraform component.

Example:

modules/ec2

modules/vpc

modules/security-group

## Typical Module Structure




Plain Text
modules/
└── ec2/
    ├── main.tf
    ├── variables.tf
    └── outputs.tf
## Module Inputs

Inputs allow values to be passed to modules.

Example:

Environment

Instance Type

Region

Project Name

## Module Output

Outputs expose values from modules.

Examples:

- Instance ID

- Public IP

- VPC ID

- Security Group ID

The workbook specifically identifies module inputs and outputs as Day 5 concepts.
+1

## Module Execution Flow

Root Module

↓

Input Variables

↓

Module

↓

Resources

↓

Outputs

## Benefits Of Modules

- Reusability

- Consistency

- Easier Maintenance

- Better Collaboration

- Faster Development

- Standardization

## Enterprise Example

Development

↓

Same EC2 Module

↓

QA

↓

Same EC2 Module

↓

Production

↓

Same EC2 Module

Only variable values change.

## Real World Example

Application Team

↓

VPC Module

↓

EC2 Module

↓

Security Module

↓

Infrastructure Ready

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

commands.md
# Day 05 - Terraform Modules Commands

## Initialize Terraform

terraform init

Screenshot:

01_init.png

## Validate Module Configuration

terraform validate

Screenshot:

02_validate.png

## Format Module Code

terraform fmt

Screenshot:

03_fmt.png

## View Execution Plan

terraform plan

Screenshot:

04_plan.png

## Apply Infrastructure

terraform apply

Screenshot:

05_apply.png

## View Outputs

terraform output

Screenshot:

06_output.png

## List Providers

terraform providers

Screenshot:

07_providers.png

## Display State Resources

terraform state list

Screenshot:

08_state_list.png

## Show Resource Information

terraform show

Screenshot:

09_show.png

## Destroy Infrastructure

terraform destroy

Screenshot:

10_destroy.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

practise_session.md
# Day 05 - Terraform Modules Practice Session

## Lab Setup

Use:

- Ubuntu EC2

- Terraform

- AWS Account

## Lab 1

Create Module Directory

Screenshot:

01_module_directory.png

## Lab 2

Create main.tf Inside Module

Screenshot:

02_module_main_tf.png

## Lab 3

Create variables.tf

Screenshot:

03_module_variables.png

## Lab 4

Create outputs.tf

Screenshot:

04_module_outputs.png

## Lab 5

Reference Module In Root Module

Screenshot:

05_root_module.png

## Lab 6

Run terraform init

Screenshot:

06_init.png

## Lab 7

Run terraform validate

Screenshot:

07_validate.png

## Lab 8

Run terraform plan

Screenshot:

08_plan.png

## Lab 9

Run terraform apply

Screenshot:

09_apply.png

## Lab 10

Review Outputs

Screenshot:

10_module_output.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
