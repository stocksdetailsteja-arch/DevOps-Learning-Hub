# Day 03 - Interview Questions

## Basic

### Q1 What Is A Pod?

Smallest deployable unit in Kubernetes.

### Q2 Can A Pod Have Multiple Containers?

Yes.

### Q3 How Do You View Pods?

kubectl get pods

### Q4 How Do You See Pod Logs?

kubectl logs POD_NAME

## Intermediate

### Q1 Difference Between Pod And Container?

Container:

Application Runtime

Pod:

Kubernetes Deployment Unit

### Q2 What Is Pod Lifecycle?

Pending → Running → Succeeded/Failed

### Q3 What Happens If Pod Fails?

Kubernetes can recreate it through higher-level controllers.

## Advanced (5+ Years)

### Q1 Pod Is Stuck In Pending State. What Will You Check?

Answer:

Node Availability

Scheduler Events

Resource Constraints

Taints & Tolerations

Cluster Events

### Q2 Pod Running But Application Not Accessible. What Will You Check?

Answer:

Logs

Container Ports

Service Configuration

Network Policies

Application Startup

### Q3 How Do Multi-Container Pods Communicate?

Answer:

Containers inside the same Pod share networking and localhost communication.

### Q4 Why Are Pods Considered Ephemeral?

Answer:

Pods can be terminated and recreated automatically.

### Q5 How Would You Troubleshoot Pod CrashLoopBackOff?

Answer:

kubectl logs

kubectl describe pod

Events

Resource Limits

Application Errors

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
