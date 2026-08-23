# Day 05 - Terraform Modules Concepts

## What Is A Terraform Module?

A Terraform Module is a collection of Terraform configuration files grouped together for a specific purpose.

Examples:

- EC2 Module

- VPC Module

- Security Group Module

- S3 Module

Modules enable reusable infrastructure components.

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
1
modules/
2
└── ec2/
3
├── main.tf
4
├── variables.tf
5
└── outputs.tf
Show more lines

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
