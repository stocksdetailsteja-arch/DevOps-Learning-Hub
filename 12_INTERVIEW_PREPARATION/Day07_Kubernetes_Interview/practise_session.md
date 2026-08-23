# Day 07 - Practice Session

## Lab 1 - Verify Cluster Access

Run:

kubectl version --client

kubectl cluster-info

kubectl config current-context

Capture:

01_cluster_access.png

## Lab 2 - Inspect Nodes

Run:

kubectl get nodes -o wide

kubectl describe node <node-name>

Review:

- Node status
- Conditions
- Capacity
- Allocatable resources
- Taints

Capture:

02_node_status.png

## Lab 3 - Inspect Pods

Run:

kubectl get pods -A

kubectl get pods -n <namespace> -o wide

Capture:

03_pod_status.png

## Lab 4 - Investigate Pod Details

Run:

kubectl describe pod <pod-name> -n <namespace>

Review:

- Container state
- Restart count
- Conditions
- Volumes
- Events

Capture:

04_pod_description.png

## Lab 5 - Review Application Logs

Run:

kubectl logs <pod-name> -n <namespace>

kubectl logs <pod-name> -n <namespace> --previous

Capture:

05_pod_logs.png

## Lab 6 - Validate Deployment

Run:

kubectl get deployment -n <namespace>

kubectl get replicasets -n <namespace>

kubectl rollout status deployment/<deployment-name> \
  -n <namespace>

Capture:

06_deployment_status.png

## Lab 7 - Validate Service Selection

Run:

kubectl get pods -n <namespace> --show-labels

kubectl describe service <service-name> -n <namespace>

kubectl get endpoints <service-name> -n <namespace>

Capture:

07_service_endpoints.png

## Lab 8 - Validate Configuration

Run:

kubectl describe configmap <configmap-name> -n <namespace>

kubectl describe secret <secret-name> -n <namespace>

Do not display or capture decoded Secret values.

Capture:

08_configuration.png

## Lab 9 - Validate Probes

Run:

kubectl describe pod <pod-name> -n <namespace>

Review:

- Startup probe
- Readiness probe
- Liveness probe
- Probe events

Capture:

09_probe_validation.png

## Lab 10 - Validate Resource Controls

Run:

kubectl describe deployment <deployment-name> \
  -n <namespace>

Review:

- CPU request
- CPU limit
- Memory request
- Memory limit

Capture:

10_resource_controls.png

## Lab 11 - Perform Rolling Update

Update the application to a valid test image version.

Run:

kubectl set image deployment/<deployment-name> \
  <container-name>=<image>:<new-tag> \
  -n <namespace>

kubectl rollout status deployment/<deployment-name> \
  -n <namespace>

Capture:

11_rolling_update.png

## Lab 12 - Perform Rollback

Run:

kubectl rollout history deployment/<deployment-name> \
  -n <namespace>

kubectl rollout undo deployment/<deployment-name> \
  -n <namespace>

kubectl rollout status deployment/<deployment-name> \
  -n <namespace>

Capture:

12_rollback.png

## Lab 13 - Simulate Pod Failure

Delete one Pod managed by a Deployment.

Run:

kubectl delete pod <pod-name> -n <namespace>

kubectl get pods -n <namespace> -w

Observe:

- Replacement Pod creation
- Replica count recovery
- Readiness status

Capture:

13_pod_recovery.png

## Lab 14 - Simulate ImagePullBackOff

Use a nonexistent image tag in a controlled lab.

Run:

kubectl get pods -n <namespace>

kubectl describe pod <failing-pod> -n <namespace>

Review events.

Restore the valid image after collecting evidence.

Capture:

14_image_pull_failure.png

## Lab 15 - Simulate Service Selector Failure

Temporarily use a selector that does not match the Pod labels.

Run:

kubectl get pods -n <namespace> --show-labels

kubectl get endpoints <service-name> -n <namespace>

Expected:

- Service has no ready endpoints

Restore the selector and validate endpoint recovery.

Capture:

15_selector_failure.png

## Lab 16 - Simulate Readiness Failure

Use a controlled incorrect readiness path.

Observe:

- Pod may remain Running
- Pod does not become Ready
- Service endpoint behaviour changes

Restore the valid readiness configuration.

Capture:

16_readiness_failure.png

## Lab 17 - Practice Interview Explanation

Explain the incident using this format:

- Symptom
- Impact
- Desired state
- Current state
- Evidence collected
- Root cause
- Resolution
- Validation
- Prevention

## Lab 18 - GitHub Validation

Before committing:

- Remove real credentials
- Remove kubeconfig files
- Remove private keys
- Use placeholder Secret values
- Validate YAML
- Review screenshots

Capture:

17_github_documentation.png
