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
