# Day 07 - AWS Infrastructure Concepts

## Why Provision AWS With Terraform?

Traditional Method

AWS Console

↓

Manual Configuration

↓

Human Error

↓

Inconsistent Environments

Terraform Method

Terraform Code

↓

Review

↓

Apply

↓

Consistent Infrastructure

Terraform makes cloud infrastructure repeatable, reviewable, and automatable.

## VPC Overview

Virtual Private Cloud (VPC) is the logical networking foundation in AWS.

Components:

- VPC

- Subnets

- Internet Gateway

- Route Tables

- Security Groups

## VPC Architecture

VPC

↓

Public Subnet

↓

EC2

↓

Internet Gateway

## EC2 Overview

Elastic Compute Cloud (EC2) provides virtual machines in AWS.

Examples:

- Web Servers

- Application Servers

- Jenkins Servers

- Docker Hosts

- Kubernetes Nodes

## Security Groups

Security Groups act as virtual firewalls.

Example:

Allow:

- SSH (22)

- HTTP (80)

- HTTPS (443)

Block:

- Unauthorized Traffic

## IAM Overview

Identity and Access Management (IAM) controls access to AWS resources.

Examples:

- Users

- Groups

- Roles

- Policies

## S3 Overview

Simple Storage Service (S3) provides object storage.

Use Cases:

- Backups

- Logs

- Terraform State

- Static Websites

- Artifact Storage

## AWS Provisioning Flow

Terraform

↓

AWS Provider

↓

VPC

↓

Security Group

↓

EC2

↓

S3

↓

Infrastructure Ready

## Enterprise Architecture

Developer

↓

GitHub

↓

Terraform

↓

AWS Infrastructure

↓

Application Deployment

## Real World Example

Terraform

↓

VPC

↓

Public Subnet

↓

EC2 Instance

↓

Security Group

↓

S3 Bucket

↓

Production Environment

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
