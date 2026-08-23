# AWS Troubleshooting Cheatsheet

## Unable To SSH EC2

Check:

- Security Group
- NACL
- Route Table
- Public IP
- SSH Key

## Website Not Loading

Check:

- EC2 Running
- Web Server
- Security Group
- ALB
- DNS

## EC2 CPU 100%

Check:

CloudWatch

top

ps -ef

Recent Deployments

## RDS Connection Issue

Check:

- Endpoint
- Port
- Security Group
- Credentials

## EC2 Unreachable

Check:

Instance Status Check

System Status Check

Network Access

## Auto Scaling Not Working

Check:

- Scaling Policy
- CloudWatch Alarm
- Launch Template

## S3 Access Denied

Check:

- IAM Policy
- Bucket Policy
- ACL

## CloudWatch Alarm Not Triggering

Check:

- Metric
- Threshold
- Evaluation Period

## ALB Unhealthy Targets

Check:

- Health Check URL
- Security Group
- Application Port

## DNS Issue

Check:

Route53

Domain Mapping

DNS Resolution

## Production Investigation Flow

Alert

↓

CloudWatch

↓

Logs

↓

Instance

↓

Network

↓

Application

↓

Root Cause

↓

Fix

↓

Verification
