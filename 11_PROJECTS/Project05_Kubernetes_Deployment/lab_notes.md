# Project 05 - Lab Notes

## Environment

Cluster Type:

Document the cluster used.

Examples:

- Minikube
- Kind
- Amazon EKS
- Other lab cluster

## Client Details

Document:

- kubectl client version
- Current context
- Number of nodes
- Node readiness

## Application Details

Application:

Java Spring Boot API

Container Image:

Document the exact image registry and version tag.

Do not document registry credentials.

## Kubernetes Resources Created

- Namespace
- ConfigMap
- Secret
- PersistentVolumeClaim
- Deployment
- ReplicaSet
- Pods
- Service
- Ingress
- HorizontalPodAutoscaler

## Validation Results

Document:

- Desired replicas
- Ready replicas
- Available replicas
- Service endpoint count
- Application health result
- Probe result
- Rollout result
- Rollback result

## Failure Simulation 1

### Scenario

Application Pod deleted manually.

### Expected Behaviour

Deployment restores the desired replica count.

### Evidence

Document:

- Deleted Pod name
- Replacement Pod name
- Event output
- Recovery duration observed in the lab

Do not invent values.

## Failure Simulation 2

### Scenario

Invalid image tag deployed.

### Expected Behaviour

New Pod cannot pull the image.

### Investigation

kubectl describe pod

kubectl get events

### Resolution

Restore the last known working image.

### Validation

Confirm rollout succeeds and required replicas become Ready.

## Failure Simulation 3

### Scenario

Service selector does not match Pod labels.

### Impact

Service endpoints disappear.

### Investigation

kubectl get pods --show-labels

kubectl describe service

kubectl get endpoints

### Resolution

Correct the Service selector.

### Validation

Confirm endpoints return and application access succeeds.

## Key Learnings

- Deployments maintain desired replica count.
- Services require correct label matching.
- A Running Pod is not necessarily Ready.
- Probes must match actual application behaviour.
- Rollouts require validation.
- Rollback must be tested before production.
- Resource requests and limits affect scheduling and stability.
- Kubernetes events provide important troubleshooting evidence.
- Secret values must not be committed.
- Git should remain the source of truth.

## Cleanup Status

- [ ] Documentation pushed
- [ ] Screenshots saved
- [ ] Namespace deleted
- [ ] Load balancer deleted
- [ ] Persistent volumes reviewed
- [ ] AWS Billing reviewed
