# Day 07 - AWS CloudWatch Concepts

## What Is CloudWatch?

Amazon CloudWatch is AWS's monitoring and observability platform.

It collects operational data from AWS services and applications.

## CloudWatch Architecture

AWS Resources

↓

CloudWatch Metrics

↓

CloudWatch Dashboards

↓

CloudWatch Alarms

↓

SNS Notification

↓

Operations Team

## CloudWatch Metrics

Metrics are numerical measurements collected over time.

Examples:

- CPUUtilization
- NetworkIn
- NetworkOut
- DiskReadOps
- DiskWriteOps

## Namespaces

Metrics are grouped into namespaces.

Examples:

AWS/EC2

AWS/RDS

AWS/Lambda

AWS/ELB

## Dimensions

Dimensions identify specific resources.

Example:

InstanceId

FunctionName

LoadBalancerName

## CloudWatch Logs

CloudWatch Logs stores application and infrastructure logs.

Examples:

- Application Logs
- Nginx Logs
- System Logs
- Lambda Logs

## Log Groups

Logs are organized into Log Groups.

Example:

/aws/lambda/my-function

## CloudWatch Dashboards

Dashboards provide visual monitoring of metrics, alarms, and logs. 【2-c1f806】【1-4a956b】

Examples:

- EC2 Dashboard
- Production Dashboard
- Infrastructure Dashboard

## CloudWatch Alarms

Alarms monitor metrics against thresholds.

Examples:

- CPU > 80%
- Memory > 90%
- Disk Usage > 85%

When triggered:

- Email Notification
- SNS
- Auto Scaling Action

## CloudWatch Agent

Used for collecting:

- Memory Metrics
- Disk Metrics
- Log Files

from EC2 instances.

## Benefits

- Native AWS Monitoring
- Real-Time Visibility
- Alarming
- Operational Insights
- Easy AWS Integration
