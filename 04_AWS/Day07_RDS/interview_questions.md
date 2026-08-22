# Day 07 - Interview Questions

## Basic

### Q1 What Is RDS?

Managed relational database service.

### Q2 Which Databases Does RDS Support?

MySQL

PostgreSQL

MariaDB

Oracle

SQL Server

### Q3 What Is A Snapshot?

Manual database backup.

## Intermediate

### Q1 Difference Between RDS And EC2 Database?

RDS:

Managed Service

EC2:

Self Managed

### Q2 Difference Between Multi-AZ And Read Replica?

Multi-AZ:

High Availability

Read Replica:

Read Scaling

### Q3 Why Use Automated Backups?

Database recovery and protection.

## Advanced (5+ Years)

### Q1 How Would You Design Highly Available Database Architecture?

Answer:

Multi-AZ

Automated Backups

Monitoring

Security Controls

Recovery Testing

### Q2 Production Database CPU Is High. What Will You Check?

Answer:

Slow Queries

Connections

Read Replica Requirement

Application Behavior

Monitoring Metrics

### Q3 When Would You Use Read Replicas?

Answer:

Reporting

Analytics

Heavy Read Workloads

### Q4 How Would You Protect Production Database?

Answer:

- Private Subnet

- Encryption

- Backups

- Restricted Security Group

- Regular Patch Management

### Q5 Explain Real World Spring Boot + RDS Architecture.

Answer:

Application

↓

Load Balancer

↓

EC2/EKS

↓

RDS Multi-AZ

↓

Read Replica

Provides availability and scalability.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
