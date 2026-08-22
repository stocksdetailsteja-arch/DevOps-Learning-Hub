# Day 04 - EBS And AMI Concepts

## What Is EBS?

Amazon EBS (Elastic Block Store) provides persistent block-level storage for EC2 instances.

Characteristics:

- Persistent Storage

- Network Attached

- Highly Available Within An Availability Zone

- Supports Backup Through Snapshots

## Why EBS Is Important?

Without EBS:

- Data lost when instance removed

With EBS:

- Persistent storage

- Backup capability

- Recovery capability

- Volume resizing

## EBS Volume Types

gp3

General Purpose SSD

Use Cases:

- Web Servers

- Jenkins

- Dev/Test

Recommended default choice for most workloads.

io2

Provisioned IOPS SSD

Use Cases:

- High Performance Databases

- Transaction Systems

st1

Throughput Optimized HDD

Use Cases:

- Log Processing

- Analytics

sc1

Cold HDD

Use Cases:

- Archival Data

## Root Volume

Contains:

- Operating System

- Boot Configuration

- Installed Packages

Example:

Ubuntu EC2 Root Disk

## Additional Volumes

Can be attached separately.

Example:

Root Volume

↓

Additional Data Volume

Used for:

- Logs

- Jenkins Data

- Application Data

## What Is A Snapshot?

A Snapshot is a backup of an EBS volume.

Benefits:

- Backup

- Recovery

- Migration

- Cloning

## Snapshot Workflow

EBS Volume

↓

Snapshot

↓

Restore

↓

New Volume

## What Is An AMI?

AMI (Amazon Machine Image) is a template used to launch EC2 instances.

Contains:

- OS

- Installed Software

- Configuration

## Custom AMI

Example:

Ubuntu

Java

Jenkins

Docker

↓

Custom AMI

New servers can be launched quickly from the AMI.

## Golden AMI

A pre-approved production image.

Contains:

- Security Updates

- Monitoring Agents

- Required Software

Used by enterprise organizations.

## Volume Expansion

Example:

20 GB

↓

Increase

↓

50 GB

Filesystem expansion required inside operating system.

## Disaster Recovery Example

Production Server

↓

Daily Snapshot

↓

Failure

↓

Restore Volume

↓

Launch Recovery Server

## Real DevOps Example

Jenkins Server

↓

Daily EBS Snapshot

↓

Server Failure

↓

Launch From AMI

↓

Attach Restored Volume

↓

Service Restored

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
