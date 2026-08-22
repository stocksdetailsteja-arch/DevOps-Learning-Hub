# Day 07 - Amazon RDS Concepts

## What Is Amazon RDS?

Amazon RDS (Relational Database Service) is a managed relational database service.

AWS automates:

- Backups

- Patching

- Monitoring

- Failover

- Maintenance

## Supported Database Engines

MySQL

Popular open-source database.

PostgreSQL

Enterprise-grade open-source database.

MariaDB

MySQL-compatible database.

Oracle

Commercial enterprise database.

SQL Server

Microsoft relational database.

## What Is A DB Instance?

A DB Instance is a managed database server provided by RDS.

Example:

MySQL Database

↓

RDS Instance

## Why Use RDS Instead Of Self-Managed Database?

Benefits:

- Automated Backups

- Automatic Patching

- Managed Monitoring

- Simplified Administration

- High Availability Options

## Storage For RDS

Common Storage Types:

gp3

General Purpose SSD

Recommended for most workloads.

io2

High Performance SSD

Used for large production databases.

## Multi-AZ Deployment

Provides High Availability.

Primary Database

↓

Standby Database

↓

Automatic Failover

Used for production systems.

## Read Replica

Used for read scaling.

Primary Database

↓

Read Replica

Benefits:

- Higher Read Throughput

- Reporting Workloads

- Analytics

## Multi-AZ vs Read Replica

Multi-AZ:

- High Availability

- Automatic Failover

Read Replica:

- Read Scaling

- No automatic failover role for primary workload

## Automated Backups

RDS automatically creates backups within configured retention periods.

Used for:

- Recovery

- Point-In-Time Restore

## Snapshots

Manual database backup.

Characteristics:

- User-controlled

- Long-term retention

- Migration support

## Point-In-Time Recovery (PITR)

Restore database to specific recovery point.

Useful when:

- Data corruption

- Accidental delete

- Application issue

## RDS Security

Best Practices:

- Private Subnet

- Encryption Enabled

- Restricted Security Group

- Strong Password Policy

- IAM Integration Where Applicable

## Production Architecture

Application Server

↓

RDS Primary

↓

Multi-AZ Standby

↓

Read Replica

Provides:

- Availability

- Recovery

- Scalability

## Real DevOps Example

Spring Boot App

↓

RDS MySQL

↓

Automated Backup

↓

CloudWatch Monitoring

Production-ready architecture.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
