# Day 07 - Interview Questions

## Basic

### Q1 What Is A Persistent Volume?

Persistent storage resource in Kubernetes.

### Q2 What Is A PVC?

Request for storage.

### Q3 What Is A StorageClass?

Defines dynamic storage provisioning behavior.

### Q4 Why Are Volumes Required?

To persist application data.

## Intermediate

### Q1 Difference Between PV And PVC?

PV:

Actual Storage Resource

PVC:

Storage Request

### Q2 What Is Dynamic Provisioning?

Storage automatically created using StorageClass.

### Q3 Why Do Databases Need PVs?

Database data must survive Pod recreation.

## Advanced (5+ Years)

### Q1 PVC Stuck In Pending State. What Will You Check?

Answer:

StorageClass

Available PV

Access Mode

Capacity

Events

### Q2 Why Use StorageClass In Production?

Answer:

- Automation

- Scalability

- Standardization

### Q3 Application Lost Data After Restart. What Will You Check?

Answer:

PVC Mapping

Mount Path

Pod Definition

Storage Binding

### Q4 How Would You Design Storage For Production Databases?

Answer:

Persistent Volumes

Backup Strategy

Monitoring

High Availability

Disaster Recovery

### Q5 How Do You Troubleshoot Volume Mount Failures?

Answer:

Pod Events

PVC Status

PV Status

StorageClass

Node Logs

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
