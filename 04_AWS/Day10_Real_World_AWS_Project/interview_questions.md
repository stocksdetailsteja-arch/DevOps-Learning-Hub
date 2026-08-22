# Day 10 - Interview Questions

## Basic

### Q1 What Services Were Used In This Architecture?

IAM, EC2, VPC, RDS, S3, ALB, Auto Scaling, CloudWatch.

### Q2 Why Use Auto Scaling?

Automatic capacity management.

### Q3 Why Use ALB?

Traffic distribution and high availability.

## Intermediate

### Q1 Why Place Database In Private Subnet?

Improved security and reduced exposure.

### Q2 Why Use Multi-AZ?

Improved availability and resilience.

### Q3 Why Enable Monitoring?

Early detection and faster response.

## Advanced (5+ Years)

### Q1 Design Production Architecture For An E-Commerce Application.

Answer:

Multi-AZ VPC

Public ALB

Auto Scaling Group

Private Application Layer

RDS Multi-AZ

CloudWatch Monitoring

SNS Alerts

Backup Strategy

Recovery Plan

### Q2 Production Traffic Increased By 500%. What Would You Do?

Answer:

Review Auto Scaling

Review ALB Metrics

Review Database Metrics

Add Read Scaling Strategy

Review Application Bottlenecks

### Q3 How Would You Design Disaster Recovery?

Answer:

- EBS Snapshots

- AMIs

- RDS Backups

- Cross-Region Strategy

- Recovery Testing

### Q4 What Is The Most Common Failure In Cloud Architectures?

Answer:

Single Point Of Failure.

Examples:

- Single EC2

- Single Database

- Missing Monitoring

### Q5 Explain End-to-End AWS DevOps Flow.

Answer:

Developer

↓

GitHub

↓

Jenkins

↓

Build

↓

Artifact

↓

Deploy To EC2

↓

ALB

↓

Users

↓

Monitoring

↓

CloudWatch Alerts

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
