# Day 07 - Kubernetes Volumes Concepts

## Why Storage Is Needed?

Pods are ephemeral.

Pod Deleted

↓

Pod Recreated

↓

Application Data Lost

Persistent storage solves this problem.

## What Is A Persistent Volume (PV)?

A Persistent Volume is a storage resource in Kubernetes.

Managed By:

- Administrator

- Cloud Provider

- Dynamic Provisioning

Purpose:

Provide Durable Storage

The workbook identifies PV as a core storage concept.

## What Is A Persistent Volume Claim (PVC)?

PVC is a request for storage.

Application

↓

PVC

↓

PV

↓

Storage

Purpose:

Abstract Storage Consumption

## PV Architecture

Application

↓

Pod

↓

PVC

↓

PV

↓

Storage System

## Storage Classes

StorageClass enables dynamic volume creation.

Benefits:

- Automation

- Standardization

- Scalability

The workbook explicitly includes StorageClass and dynamic provisioning.

## Dynamic Provisioning

Without Dynamic Provisioning:

Admin Creates PV

↓

Application Uses PV

With Dynamic Provisioning:

PVC Created

↓

StorageClass Creates PV Automatically

↓

Application Gets Storage

## Volume Access Modes

ReadWriteOnce (RWO)

Mounted Read/Write By Single Node

ReadOnlyMany (ROX)

Mounted Read Only By Multiple Nodes

ReadWriteMany (RWX)

Mounted Read/Write By Multiple Nodes

## Stateful Applications

Examples:

- MySQL

- PostgreSQL

- MongoDB

- ElasticSearch

Stateful applications require persistent storage.

## Volume Lifecycle

Create PVC

↓

Bind To PV

↓

Application Uses Storage

↓

Delete Application

↓

Storage Retained

## Real World Example

MySQL Pod

↓

PVC

↓

PV

↓

EBS Volume

↓

Persistent Database Storage

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
