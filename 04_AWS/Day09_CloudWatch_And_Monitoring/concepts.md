# Day 09 - CloudWatch And Monitoring Concepts

## What Is Monitoring?

Monitoring collects and analyzes system and application signals.

Benefits:

- Faster Detection

- Faster Resolution

- Better Visibility

- Reliability Improvement

Monitoring helps reduce detection and recovery time.

## What Is CloudWatch?

Amazon CloudWatch is AWS's monitoring service.

CloudWatch helps monitor:

- Infrastructure

- Applications

- Services

- Logs

- Events

## CloudWatch Components

Metrics

Numerical measurements collected over time.

Examples:

CPUUtilization

NetworkIn

NetworkOut

DiskReadOps

Logs

Stores application and infrastructure logs.

Examples:

EC2 Logs

Application Logs

Lambda Logs

Dashboards

Visual representation of monitoring data.

Provides:

- Centralized Visibility

- Trend Analysis

- Operational Overview

Alarms

CloudWatch Alarms trigger actions when thresholds are met.

Example:

CPU > 80%

↓

Send Alert

## What Is Amazon SNS?

Amazon SNS (Simple Notification Service) provides notifications.

Common Uses:

- Email Alerts

- SMS Alerts

- Event Notifications

CloudWatch alarms frequently use SNS for alert delivery.

SNS integrates with CloudWatch and can send notifications when alarm thresholds are reached.

## CloudWatch Alarm Workflow

Metric

↓

Threshold Breached

↓

Alarm Triggered

↓

SNS Notification

↓

Email Alert

## What Is CloudTrail?

AWS CloudTrail records AWS API activity.

Used For:

- Auditing

- Security Monitoring

- Compliance

- Troubleshooting

CloudTrail helps identify who performed actions and when they occurred.

## CloudWatch vs CloudTrail

CloudWatch:

Monitors performance and operational metrics.

CloudTrail:

Records AWS account activity and API calls.

## Metrics Examples

EC2:

- CPUUtilization

- NetworkIn

- NetworkOut

- StatusCheckFailed

RDS:

- CPUUtilization

- FreeStorageSpace

- DatabaseConnections

ALB:

- RequestCount

- TargetResponseTime

## Log Groups

CloudWatch organizes logs into:

Log Groups

↓

Log Streams

Example:

/aws/ec2/app-server

↓

instance-log-stream

## Dashboard Example

Production Dashboard

Contains:

- EC2 CPU

- EC2 Memory

- RDS CPU

- RDS Connections

- ALB Requests

## Monitoring Best Practices

Monitor:

- Availability

- Performance

- Resource Usage

- Security Events

- Costs

- Application Errors

## Incident Monitoring Flow

Metric Spike

↓

Alarm Trigger

↓

SNS Notification

↓

Engineer Review

↓

Mitigation

↓

Root Cause Analysis

## Real DevOps Example

Application Hosted On EC2

↓

CloudWatch Metrics

↓

Alarm

↓

SNS Email

↓

Operations Team Response

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
