# Day 04 - Interview Questions

## Basic

### Q1 What Is A Deployment?

Kubernetes object used to manage Pods and ReplicaSets.

### Q2 What Is A ReplicaSet?

Maintains desired number of Pod replicas.

### Q3 How Do You Scale A Deployment?

kubectl scale deployment

### Q4 What Is Rolling Update?

Gradual replacement of old Pods with new Pods.

## Intermediate

### Q1 Difference Between Pod And Deployment?

Pod:

Single Workload Unit

Deployment:

Manages Multiple Pods

### Q2 Why Use ReplicaSets?

Ensure high availability.

### Q3 Why Use Rolling Updates?

Enable application updates without downtime.

## Advanced (5+ Years)

### Q1 Deployment Update Failed. What Will You Check?

Answer:

Rollout Status

Events

Pod Logs

Image Availability

Resource Constraints

### Q2 How Does Kubernetes Achieve Self-Healing?

Answer:

Deployment

↓

ReplicaSet

↓

Recreates Missing Pods

### Q3 Why Use Rollbacks?

Answer:

Quick Recovery From Failed Deployments

### Q4 Deployment Pods Not Starting. What Will You Check?

Answer:

Pod Events

Logs

Image Pull Status

Resource Limits

Node Health

### Q5 How Would You Design Production Deployments?

Answer:

- Multiple Replicas

- Rolling Updates

- Health Checks

- Monitoring

- Rollback Strategy

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
