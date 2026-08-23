# Project 05 - Kubernetes Troubleshooting

## Issue 1 - Pod Is Pending

### Investigation

kubectl describe pod \
  -n devops-portfolio \
  <pod-name>

kubectl get events \
  -n devops-portfolio \
  --sort-by='.metadata.creationTimestamp'

### Possible Causes

- Insufficient CPU
- Insufficient memory
- PersistentVolumeClaim pending
- Node selector mismatch
- Untolerated taint
- Affinity restriction
- Node unavailable

### Resolution

Correct the confirmed scheduling constraint.

Do not reduce resource requests without validating actual workload requirements.

## Issue 2 - CrashLoopBackOff

### Investigation

kubectl logs \
  -n devops-portfolio \
  <pod-name>

kubectl logs \
  -n devops-portfolio \
  <pod-name> \
  --previous

kubectl describe pod \
  -n devops-portfolio \
  <pod-name>

### Possible Causes

- Application exception
- Missing configuration
- Missing Secret
- Invalid command
- Database unavailable
- Liveness probe failure
- Memory limit exceeded

## Issue 3 - ImagePullBackOff

### Investigation

kubectl describe pod \
  -n devops-portfolio \
  <pod-name>

### Possible Causes

- Image does not exist
- Tag does not exist
- Registry authentication failure
- Registry network failure
- imagePullSecret missing

### Resolution

Correct the image reference or registry authentication.

## Issue 4 - Pod Running But Not Ready

### Investigation

kubectl describe pod \
  -n devops-portfolio \
  <pod-name>

kubectl logs \
  -n devops-portfolio \
  <pod-name>

### Possible Causes

- Readiness endpoint fails
- Dependency unavailable
- Incorrect probe port
- Incorrect probe path
- Startup incomplete

## Issue 5 - Service Has No Endpoints

### Investigation

kubectl get pods \
  -n devops-portfolio \
  --show-labels

kubectl describe service springboot-service \
  -n devops-portfolio

kubectl get endpoints springboot-service \
  -n devops-portfolio

### Root Cause

The Service selector does not match labels on Ready Pods.

### Resolution

Correct labels or selector and validate endpoints.

## Issue 6 - Service Exists But Application Is Unreachable

### Possible Causes

- No ready endpoints
- Wrong targetPort
- Application listening only on localhost
- NetworkPolicy blocking traffic
- Application unavailable
- Wrong namespace

### Investigation

kubectl get endpoints

kubectl describe service

kubectl exec into a diagnostic Pod and test the Service endpoint.

## Issue 7 - Ingress Returns 404

### Possible Causes

- Wrong hostname
- Wrong path
- Ingress rule mismatch
- Wrong IngressClass
- Controller not handling the resource

### Investigation

kubectl describe ingress springboot-ingress \
  -n devops-portfolio

Review Ingress controller logs.

## Issue 8 - Ingress Returns 502 Or 503

### Possible Causes

- Service has no endpoints
- Backend port mismatch
- Pods are not Ready
- Application is not listening
- Ingress controller cannot reach the backend

### Investigation

kubectl get endpoints

kubectl describe service

kubectl describe ingress

kubectl logs for the Ingress controller.

## Issue 9 - PersistentVolumeClaim Is Pending

### Investigation

kubectl describe pvc application-data \
  -n devops-portfolio

kubectl get storageclass

kubectl get pv

### Possible Causes

- No default StorageClass
- No matching PersistentVolume
- Unsupported access mode
- Provisioner failure
- Cloud storage permissions issue

## Issue 10 - Pod Is OOMKilled

### Investigation

kubectl describe pod \
  -n devops-portfolio \
  <pod-name>

kubectl top pod \
  -n devops-portfolio

### Root Cause

The container exceeded its memory limit.

### Response

- Review memory usage
- Inspect application heap settings
- Check for leaks
- Tune the application
- Adjust limits only using evidence

## Issue 11 - Liveness Probe Causes Restart Loop

### Possible Causes

- Probe starts too early
- Endpoint depends on an external service
- Timeout too short
- Failure threshold too low
- Wrong path or port

### Prevention

Use startup probes for slow-starting applications and design liveness checks carefully.

## Issue 12 - Rollout Is Stuck

### Investigation

kubectl rollout status

kubectl get replicasets

kubectl describe deployment

kubectl get events

### Possible Causes

- New Pods not Ready
- Image pull failure
- Resource shortage
- Readiness probe failure
- Invalid configuration
- maxUnavailable and capacity constraints

## Production Scenario 1 - Node Failure During Deployment

### Impact

Old and new Pods may be redistributed while the rollout is active.

### Investigation

- Node status
- Pod placement
- Deployment status
- ReplicaSet state
- PodDisruptionBudget
- Cluster capacity

### Prevention

- Multiple worker nodes
- Pod anti-affinity
- Capacity headroom
- PodDisruptionBudget
- Controlled rollout strategy

## Production Scenario 2 - All Pods Restart After ConfigMap Change

### Root Cause

Reload strategy or rollout process replaced all Pods too aggressively.

### Prevention

- Controlled rolling update
- maxUnavailable configuration
- Readiness probes
- Staged validation
- Versioned configuration

## Production Scenario 3 - Deployment Works In Test But Fails In Production

### Possible Causes

- Different Secret
- Different StorageClass
- Different Ingress controller
- Different NetworkPolicy
- Different resource capacity
- Different admission policies
- Different dependency endpoints

### Investigation

Compare configuration without exposing secrets.

## Production Scenario 4 - HPA Does Not Scale

### Investigation

kubectl describe hpa \
  -n devops-portfolio

kubectl top pods \
  -n devops-portfolio

### Possible Causes

- Metrics unavailable
- Resource requests missing
- Target not reached
- HPA references wrong Deployment
- Stabilization behaviour

## Production Scenario 5 - Deployment Rollback Does Not Fix Incident

### Possible Causes

- Database change is incompatible
- ConfigMap remains changed
- Secret remains changed
- External dependency is unavailable
- Network policy changed
- Incident is unrelated to application image

### Lesson

Image rollback restores only the Deployment template revision. Validate every related change.

## Production Scenario 6 - Uneven Traffic Across Pods

### Possible Causes

- Long-lived connections
- Session affinity
- Readiness differences
- Unequal Pod performance
- Client connection reuse

### Investigation

Review:

- Service configuration
- Endpoint readiness
- Application metrics
- Pod resource usage
- Connection behaviour

## Production Scenario 7 - Production Secret Was Committed

### Immediate Actions

- Remove exposure from the active repository state
- Rotate the affected credential
- Review repository history
- Review access logs
- Replace the Secret securely
- Validate applications
- Document the incident

Deleting only the current file does not invalidate an exposed credential.
