# Day 01 - Terraform Introduction Concepts

## What Is Terraform?

Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp.

Terraform allows organizations to create, modify, and remove infrastructure using code. It supports multiple cloud providers and uses HCL (HashiCorp Configuration Language).

## What Is Infrastructure As Code?

Infrastructure As Code (IaC) means managing infrastructure using code rather than manual operations.

Traditional Approach

Cloud Console

↓

Manual Configuration

↓

Manual Validation

↓

Human Error

IaC Approach

Terraform Code

↓

Review

↓

Apply

↓

Automated Infrastructure

Infrastructure as Code improves consistency, version control, automation, collaboration, and reliability.

## Why Terraform?

Before Terraform:

- Manual Deployments

- Configuration Drift

- Operational Errors

- Slow Provisioning

With Terraform:

- Automation

- Repeatability

- Version Control

- Faster Provisioning

- Infrastructure Documentation

Terraform makes infrastructure repeatable, reviewable, and automatable.

## Terraform Architecture

Terraform Configuration

↓

Terraform Core

↓

Providers

↓

Cloud APIs

↓

Infrastructure

## Terraform Core

Responsibilities:

- Read Configuration

- Create Execution Plan

- Maintain State

- Manage Resource Lifecycle

## What Are Providers?

Providers are plugins that communicate with platforms and services.

Examples:

- AWS Provider

- AzureRM Provider

- Google Provider

- Kubernetes Provider

Providers interact with cloud APIs to provision resources.

## Terraform Workflow

Write Code

↓

terraform init

↓

terraform validate

↓

terraform plan

↓

terraform apply

↓

Infrastructure Created

↓

terraform destroy

↓

Infrastructure Removed

Terraform workflow is based on initialization, planning, execution, and destruction.

## Declarative Model

Terraform is Declarative.

You define:

"What infrastructure should exist"

Terraform decides:

"How infrastructure will be created"

Declarative infrastructure is one of the core principles of Terraform.

## Terraform Lifecycle

Write

↓

Initialize

↓

Plan

↓

Apply

↓

Modify

↓

Destroy

## Real World Example

Developer

↓

GitHub

↓

Terraform Code

↓

CI/CD

↓

AWS Infrastructure

↓

Application Deployment

Terraform integrates with Git and CI/CD pipelines for automated infrastructure deployments.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
