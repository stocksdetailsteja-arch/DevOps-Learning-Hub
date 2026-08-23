# AWS Interview Questions

## Beginner Questions

### What Is AWS?

Amazon Web Services is a cloud computing platform.

### What Is EC2?

Virtual machine service.

### What Is S3?

Object storage service.

### What Is IAM?

Identity and Access Management service.

### What Is EBS?

Block storage attached to EC2.

## Intermediate Questions

### Difference Between Security Group And NACL?

Security Group:

- Stateful
- Instance Level

NACL:

- Stateless
- Subnet Level

### Difference Between EBS And S3?

EBS:

- Block Storage

S3:

- Object Storage

### Difference Between Public And Private Subnet?

Public:

Has route to Internet Gateway.

Private:

No direct internet access.

### What Is Auto Scaling?

Automatically adjusts instance count.

### What Is Load Balancer?

Distributes traffic among targets.

## Advanced Questions (5+ Years)

### Website Hosted On EC2 Is Not Accessible. What Would You Check?

Investigation:

- EC2 Status
- Security Group
- Route Table
- NACL
- Application Status
- DNS
- Load Balancer

### Explain A Highly Available Architecture.

Users

↓

Route53

↓

ALB

↓

Auto Scaling Group

↓

Multi-AZ EC2

↓

RDS Multi-AZ

### Explain Shared Responsibility Model.

AWS secures:

- Physical Infrastructure
- Network Hardware

Customer secures:

- IAM
- Data
- OS
- Applications

### Explain Disaster Recovery Strategy.

- Backups
- Snapshots
- Multi-AZ
- Multi-Region

Your AWS workbook recommends backups, snapshots, Multi-AZ deployment, Auto Scaling and tested restore plans for recovery. 【1-7e9d6d】【2-ce5a21】

### How Would You Protect AWS Environment?

- IAM Roles
- Least Privilege
- Private Subnets
- Restricted Security Groups

Your AWS workbook specifically recommends IAM roles, least privilege access, private subnets and restricted security groups. 【1-7e9d6d】【2-ce5a21】

### How Would You Handle Secrets?

- Secrets Manager
- Parameter Store
- IAM Roles

Your AWS workbook recommends Secrets Manager, Parameter Store and IAM roles for secrets management. 【1-7e9d6d】【2-ce5a21】

### How Would You Investigate A Production Incident?

Evidence Collection:

- CloudTrail Events
- CloudWatch Logs
- CloudWatch Metrics
- Resource State
- Network Flow

The AWS workbook explicitly lists CloudTrail events, CloudWatch logs, metrics, resource state and network activity as key evidence sources. 【1-7e9d6d】【2-ce5a21】
