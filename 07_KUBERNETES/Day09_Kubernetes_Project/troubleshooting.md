# Day 09 - Kubernetes Project Troubleshooting

## Scenario 1 - Deployment Does Not Become Available

### Possible Causes

- Image pull failure

- Startup failure

- Readiness failure

- Resource shortage

- Invalid environment variable

### Investigation

kubectl rollout status deployment/project-app -n devops-project

kubectl get pods -n devops-project

kubectl describe pod POD_NAME -n devops-project

kubectl logs POD_NAME -n devops-project

### Resolution

Correct the confirmed image, configuration, resource, or application issue.

## Scenario 2 - ImagePullBackOff

### Possible Causes

- Wrong image name

- Wrong tag

- Private registry credentials missing

- Registry unavailable

- Network problem

### Investigation

Review Pod events and imagePullSecrets.

### Resolution

Use an available versioned image and valid registry credentials.

## Scenario 3 - CrashLoopBackOff

### Possible Causes

- Application startup failure

- Missing configuration

- Invalid Secret

- Dependency unavailable

- Incorrect command

### Investigation

kubectl logs POD_NAME -n devops-project --previous

kubectl describe pod POD_NAME -n devops-project

### Resolution

Correct the application startup or configuration failure.

## Scenario 4 - Service Has No Endpoints

### Possible Causes

- Selector mismatch

- Wrong Namespace

- Pods not Ready

- Incorrect labels

### Investigation

kubectl get service -n devops-project -o yaml

kubectl get pods -n devops-project --show-labels

kubectl get endpoints -n devops-project

### Resolution

Align Service selectors with Pod labels.

## Scenario 5 - Ingress Does Not Route Traffic

### Possible Causes

- Ingress Controller missing

- Wrong IngressClass

- Host mismatch

- Path mismatch

- Service unavailable

- No endpoints

### Investigation

kubectl describe ingress -n devops-project

kubectl get pods -n ingress-nginx

kubectl get endpoints -n devops-project

### Resolution

Correct the confirmed controller, routing, Service, or endpoint issue.

## Scenario 6 - ConfigMap Value Missing

### Possible Causes

- WrongconfigMapRef

- Wrong key

- Wrong Namespace

- Pod not restarted

### Resolution

Correct the Deployment reference and recreate or roll out Pods when required.

## Scenario 7 - Secret Reference Fails

### Possible Causes

- Wrong Secret name

- Wrong key

- Secret missing

- Wrong Namespace

### Security Warning

Do not print or decode production values during routine troubleshooting.

## Scenario 8 - PVC Remains Pending

### Investigation

- PVC events

- StorageClass

- Requested access mode

- Capacity

- Provisioner

### Resolution

Correct the storage request or StorageClass configuration.

## Scenario 9 - Data Disappears After Pod Recreation

### Possible Causes

- Application wrote outside mounted path

- PVC not mounted

- Different claim referenced

- Ephemeral volume used

### Resolution

Correct the volume and mount-path configuration, then retest persistence.

## Scenario 10 - Rolling Update Stuck

### Investigation

- Rollout status

- New Pod events

- Readiness probe

- Image access

- Node resources

### Resolution

Correct the failed revision or roll back to the previous stable revision.

## Scenario 11 - Application Slow After Scaling

### Possible Causes

- Database bottleneck

- Shared storage bottleneck

- Uneven traffic

- CPU throttling

- Memory pressure

- Dependency saturation

### Lesson

Increasing Pod replicas does not automatically scale downstream dependencies.

## Scenario 12 - Secret Accidentally Committed To Git

### Immediate Response

- Follow the approved security-incident process

- Revoke or rotate the exposed value

- Review usage and access history

- Remove the value from active content and repository history through an approved process

- Replace plaintext secret handling

- Review affected systems

## Scenario 13 - Project Cleanup Leaves Cloud Disk

### Cause

PersistentVolume reclaim behavior retained the cloud storage.

### Investigation

kubectl get pv

Review reclaim policy and cloud-storage resources.

### Resolution

Delete retained resources only after confirming data-retention requirements and ownership.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
