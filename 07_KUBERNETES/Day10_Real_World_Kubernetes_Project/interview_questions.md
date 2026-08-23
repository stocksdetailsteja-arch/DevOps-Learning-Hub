# Day 10 - Interview Questions

## Basic

### Q1 What Is A Production Kubernetes Deployment?

Application deployed using production-grade configuration, monitoring, security, and availability controls.

### Q2 Why Use Probes?

Validate application health.

### Q3 Why Use Helm?

Simplifies reusable deployments.

## Intermediate

### Q1 Difference Between Readiness And Liveness Probe?

Readiness:

Receive Traffic

Liveness:

Container Health

### Q2 Why Use Multiple Replicas?

Improve availability.

### Q3 Why Use Resource Limits?

Prevent resource exhaustion.

## Advanced (5+ Years)

### Q1 Production Application Keeps Restarting. What Will You Check?

Answer:

Events

Logs

Liveness Probe

Resource Limits

Application Startup

### Q2 How Would You Design High Availability?

Answer:

- Multiple Replicas

- Load Balancer

- Ingress

- Monitoring

- Rollback Plan

### Q3 Kubernetes Cluster Healthy But Application Down. What Will You Check?

Answer:

Endpoints

Service

Ingress

Readiness Probe

Application Logs

### Q4 How Do You Reduce Security Risk?

Answer:

RBAC

Namespaces

Network Policies

Secrets

Least Privilege

The workbook explicitly recommends RBAC, namespaces, network policies, and restricted workloads.

### Q5 What Is The Recommended Troubleshooting Sequence?

Answer:

Desired State

↓

Events

↓

Pod Status

↓

Describe

↓

Logs

↓

Probes

↓

Scheduling

↓

Endpoints

↓

DNS

↓

Network

This troubleshooting approach is directly referenced in the workbook.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
