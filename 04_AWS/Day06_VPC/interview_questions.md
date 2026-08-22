# Day 06 - Interview Questions

## Basic

### Q1 What Is VPC?

A logically isolated virtual network in AWS.

### Q2 What Is A Public Subnet?

Subnet with route to Internet Gateway.

### Q3 What Is A Private Subnet?

Subnet without direct internet access.

## Intermediate

### Q1 Difference Between IGW And NAT Gateway?

IGW:

Inbound and outbound internet access.

NAT Gateway:

Outbound only for private subnets.

### Q2 Difference Between Security Group And NACL?

Security Group:

Stateful.

Instance Level.

NACL:

Stateless.

Subnet Level.

## Advanced (5+ Years)

### Q1 Design A Production VPC.

Answer:

Multi-AZ

Public Subnets

Private Subnets

Load Balancer

NAT Gateway

Security Groups

Monitoring

### Q2 Why Place Database In Private Subnet?

Answer:

Reduce exposure.

Improve security.

Restrict internet access.

### Q3 EC2 Has Public IP But Internet Not Working. What Would You Check?

Answer:

Route Table

Internet Gateway

Security Group

NACL

OS Firewall

### Q4 How Would You Secure Jenkins In AWS?

Answer:

- Private Subnet

- Security Group Restrictions

- IAM Role

- Backup Strategy

- Monitoring

### Q5 Why Is NAT Gateway Required?

Answer:

Allows private subnet resources to download updates and access external services without becoming publicly reachable.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
