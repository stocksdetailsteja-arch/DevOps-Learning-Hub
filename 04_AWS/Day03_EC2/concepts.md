# Day 03 - EC2 Concepts

## What Is EC2?

Amazon EC2 is a compute service that allows launching virtual machines in AWS. EC2 is one of the core AWS services used to run applications and infrastructure.

## What Is An Instance?

An EC2 Instance is a virtual server.

Example:

- Ubuntu Server

- Amazon Linux

- Red Hat

- Windows Server

## Instance Lifecycle

Pending

↓

Running

↓

Stopping

↓

Stopped

↓

Terminated

## Instance Types

General Purpose

Examples:

t3.micro

t3.small

t3.medium

Use Cases:

- Small Applications

- Development

- Learning

Compute Optimized

Examples:

c5.large

c6i.large

Use Cases:

- Build Servers

- CI/CD Pipelines

Memory Optimized

Examples:

r5.large

r6i.large

Use Cases:

- Databases

- Caching

## What Is AMI?

AMI = Amazon Machine Image

AMI contains:

- OS

- Configuration

- Software

AMI acts as template for launching EC2.

## Key Pair

Used for secure login.

Consists of:

- Public Key

- Private Key (.pem)

Never upload .pem files to GitHub.

## Security Groups

Virtual firewall for EC2.

Example Rules:

SSH → Port 22

HTTP → Port 80

HTTPS → Port 443

## Public IP

Accessible through Internet.

Example:

Application Server

## Private IP

Accessible only inside VPC.

Example:

Database Server

## Elastic IP

Static public IP.

Useful when server restart should not change public address.

## User Data

Script executed at instance launch.

Common use:

Install NGINX automatically.

Example:

#!/bin/bash

yum install nginx -y

systemctl start nginx

## EC2 Pricing Models

On-Demand

Pay for usage.

Reserved

Long-term commitment.

Spot

Uses spare AWS capacity.

Cheapest but interruptible.

## Real DevOps Example

Developer Push

↓

Jenkins On EC2

↓

Build

↓

Deploy Application

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
