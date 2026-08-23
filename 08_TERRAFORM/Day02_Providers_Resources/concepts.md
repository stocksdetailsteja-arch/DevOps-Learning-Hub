# Day 02 - Providers & Resources Concepts

## What Is A Provider?

A provider is a plugin that enables Terraform to interact with cloud platforms and APIs.

Examples:

- AWS Provider

- AzureRM Provider

- Google Provider

- Kubernetes Provider

Providers allow Terraform to create, update, and delete infrastructure resources.

## Why Providers?

Terraform Core

↓

Provider

↓

Cloud API

↓

Infrastructure

Without Providers:

Terraform cannot communicate with cloud services.

## AWS Provider Example

provider "aws" {

region = "ap-south-1"

}

Purpose:

Connect Terraform to AWS.

## What Is A Resource?

A resource is a piece of infrastructure managed by Terraform.

Examples:

- EC2 Instance

- S3 Bucket

- VPC

- Security Group

- IAM User

Resources are the building blocks of Terraform infrastructure.

## Resource Block Structure

resource "TYPE" "NAME" {

configuration

}

Example:

resource "aws_instance" "web" {

ami = "ami-id"

instance_type = "t2.micro"

}

## Provider + Resource Architecture

Terraform Configuration

↓

Provider

↓

Cloud API

↓

Resource

↓

Infrastructure Created

## Dependency Graph

Terraform automatically determines resource dependencies.

Example:

VPC

↓

Subnet

↓

EC2 Instance

Terraform creates resources in the correct order.

## Terraform Execution Flow

Write Code

↓

terraform init

↓

terraform plan

↓

terraform apply

↓

Infrastructure Created

## Terraform Plan

Purpose:

Preview infrastructure changes before execution.

Benefits:

- Validation

- Review

- Risk Reduction

Terraform creates an execution plan before applying infrastructure.

## Terraform Apply

Purpose:

Create or update infrastructure.

Result:

Infrastructure Provisioned

## Terraform Destroy

Purpose:

Remove infrastructure managed by Terraform.

Benefits:

- Cost Savings

- Environment Cleanup

- Automation

## Real World Example

Terraform

↓

AWS Provider

↓

VPC

↓

Subnet

↓

EC2 Instance

↓

Application Deployment

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
