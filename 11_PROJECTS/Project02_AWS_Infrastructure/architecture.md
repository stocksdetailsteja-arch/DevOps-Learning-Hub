# AWS Infrastructure Architecture

## Request Flow

User

↓

DNS

↓

Application Load Balancer

↓

EC2 Instance

↓

Amazon RDS

## Monitoring Flow

EC2

↓

CloudWatch Agent

↓

CloudWatch Metrics

↓

CloudWatch Alarm

↓

SNS Notification

## Security Layers

Internet

↓

ALB Security Group

↓

EC2 Security Group

↓

RDS Security Group

## Failure Points

- EC2 Failure
- ALB Target Failure
- RDS Failure
- Security Group Misconfiguration
- Route Table Issue
