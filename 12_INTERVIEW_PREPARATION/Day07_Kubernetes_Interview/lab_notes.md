# Day 07 - Lab Notes

## Cluster Environment

Cluster Type:

Document the cluster used.

Examples:

- Minikube
- Kind
- Amazon EKS
- Other lab cluster

## Kubernetes Client

kubectl Version:

Document Here

## Cluster Context

Current Context:

Document Here

## Nodes

Document:

- Node count
- Node readiness
- Capacity
- Taints

## Workload

Application:

Document Here

Namespace:

Document Here

Deployment:

Document Here

Container Image:

Document the exact versioned image tag.

## Deployment Status

Desired Replicas:

Document Here

Ready Replicas:

Document Here

Available Replicas:

Document Here

## Service Validation

Service Type:

Document Here

Selector:

Document Here

Endpoint Count:

Document Here

## Probe Validation

Startup Probe:

Document Result

Readiness Probe:

Document Result

Liveness Probe:

Document Result

## Resource Configuration

CPU Request:

Document Here

CPU Limit:

Document Here

Memory Request:

Document Here

Memory Limit:

Document Here

## Rolling Update

Previous Image:

Document Here

New Image:

Document Here

Rollout Result:

Document Here

## Rollback

Revision Restored:

Document Here

Validation Result:

Document Here

## Failure Simulation

### Symptom

Document Here

### User Impact

Document Here

### Commands Used

Document Here

### Evidence

Document Here

### Root Cause

Document the actual verified cause.

### Resolution

Document Here

### Validation

Document Here

### Prevention

Document Here

## Key Learnings

- A Running Pod is not necessarily Ready.
- Services depend on correct selectors and Ready endpoints.
- Events provide important scheduling and lifecycle evidence.
- Previous container logs are useful for restarted containers.
- Probes must match real application behaviour.
- Resource settings affect scheduling and runtime stability.
- Rollback must be validated.
- Git should represent the approved deployment state.
- Real Secret values must not be committed.
