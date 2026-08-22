# Day 05 - Amazon S3 Concepts

## What Is Amazon S3?

Amazon S3 (Simple Storage Service) is AWS object storage.

S3 stores data as:

Object

↓

Bucket

Objects are stored inside buckets.

## What Is A Bucket?

A bucket is a container for storing objects.

Examples:

company-backups

jenkins-artifacts

terraform-state

Bucket names must be globally unique.

## What Is An Object?

An object consists of:

- Data

- Key (object name)

- Metadata

Example:

backup.zip

application.jar

logs.tar.gz

## S3 Characteristics

- Highly durable

- Scalable

- Managed Service

- Supports Encryption

- Supports Versioning

- Supports Lifecycle Policies

## Storage Classes

S3 Standard

Use Cases:

- Frequently Accessed Data

- Web Applications

- Active Files

S3 Standard-IA

IA = Infrequent Access

Use Cases:

- Backup Files

- Older Application Data

S3 One Zone-IA

Stored in one Availability Zone.

Lower cost.

Not ideal for critical production backups.

S3 Glacier Instant Retrieval

Used for archive data that still requires relatively quick retrieval.

S3 Glacier Flexible Retrieval

Used for long-term archival.

S3 Glacier Deep Archive

Lowest-cost archival storage.

Long retrieval times.

## Versioning

Versioning protects against:

- Accidental Deletion

- Accidental Overwrite

Example:

File v1

↓

File v2

↓

File v3

All versions retained.

## Lifecycle Policy

Automatically moves objects between storage classes.

Example:

30 Days

↓

Standard-IA

90 Days

↓

Glacier

365 Days

↓

Delete

## Encryption

SSE-S3

AWS Managed Encryption

SSE-KMS

Uses AWS KMS Keys

More control and auditing.

## Bucket Policy

JSON-based access control policy.

Controls:

- Users

- Services

- Accounts

Allowed to access bucket.

## Static Website Hosting

S3 can host:

- HTML

- CSS

- JavaScript

Websites without traditional web servers.

## Terraform State Example

Terraform State File

↓

S3 Bucket

↓

Versioning Enabled

↓

Safe Infrastructure Management

Real-world DevOps usage.

## Real DevOps Example

Jenkins Build

↓

Build Artifact

↓

Upload To S3

↓

Deployment Pipeline

↓

Download Artifact

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
