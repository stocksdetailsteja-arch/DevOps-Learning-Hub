# Day 05 - Docker Volumes Concepts

## Why Volumes?

Containers are temporary by design.

Example:

Container

↓

Data Created

↓

Container Removed

↓

Data Lost

Volumes prevent this problem.

## What Is A Docker Volume?

A Docker Volume is a storage mechanism managed by Docker.

Purpose:

Store Data Outside Container Lifecycle

Example:

Container

↓

Volume

↓

Persistent Data

## Data Persistence

Without Volume:

Container Removed

↓

Data Lost

With Volume:

Container Removed

↓

Data Remains

## Volume Lifecycle

Create Volume

↓

Attach Volume

↓

Use Volume

↓

Backup Volume

↓

Remove Volume

## Types Of Storage

Named Volumes

Managed by Docker.

Example:

my-volume

Anonymous Volumes

Created automatically.

Usually temporary.

Bind Mounts

Host Directory

↓

Container Directory

Used when direct host access is required.

The workbook specifically highlights persistence and bind mounts as key concepts.

## Volume Architecture

Application

↓

Container

↓

Volume

↓

Host Storage

## Real World Example

MySQL Container

↓

Database Data

↓

Docker Volume

↓

Persistent Storage

Without volume, database data would be lost.

## Backup Strategy

Volume

↓

Backup

↓

Storage

↓

Restore

↓

Application Recovery

## Volume vs Bind Mount

Volume:

Docker Managed

Portable

Recommended

Bind Mount:

Host Managed

Direct Access

Environment Specific

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
