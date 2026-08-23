# Project 02 - AWS Infrastructure

## Objective

Build a secure and highly available AWS infrastructure suitable for hosting enterprise applications.

## AWS Services Used

- Amazon VPC
- Amazon EC2
- Security Groups
- Application Load Balancer
- Auto Scaling Group
- Amazon RDS
- Amazon S3
- IAM Role
- Amazon CloudWatch
- SNS

## Business Requirements

- Secure architecture
- Highly available deployment
- Private database layer
- Monitoring enabled
- Scalable application layer

## Functional Requirements

- External users access ALB
- ALB forwards traffic to EC2
- EC2 communicates with RDS
- Logs and metrics sent to CloudWatch
- Alarms generate SNS notifications

## Non-Functional Requirements

- High Availability
- Security
- Scalability
- Monitoring
- Cost Control

## Validation

- ALB reachable
- EC2 healthy
- RDS reachable from EC2
- CloudWatch metrics available
- Auto Scaling configured

## Deliverables

- Architecture diagram
- AWS deployment
- Screenshots
- Documentation
- Runbook
- Troubleshooting guide
- Rollback guide
