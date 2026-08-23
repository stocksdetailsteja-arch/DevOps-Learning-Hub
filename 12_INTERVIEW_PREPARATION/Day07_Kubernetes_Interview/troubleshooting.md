# Kubernetes Production Troubleshooting

## Universal Troubleshooting Sequence

1. Confirm the symptom
2. Identify the affected namespace and workload
3. Compare desired and current state
4. Check Pod status
5. Describe the failing resource
6. Review events
7. Review current logs
8. Review previous logs
9. Validate image and configuration
10. Validate probes
11. Validate scheduling
12. Validate Service endpoints
13. Validate DNS and network
14. Review recent changes
15. Apply the smallest safe correction
16. Validate recovery
17. Reconcile Git
18. Document prevention

This sequence follows your internal Kubernetes workbook guidance to inspect desired and current state, events, Pod status, descriptions, logs, probes, images, scheduling, Service endpoints, DNS and networking. 【1-6e14e5】【2-90c085】

## Scenario 1 - CrashLoopBackOff

### Symptom

The container repeatedly starts and exits.

### Investigation

kubectl describe pod <pod-name> -n <namespace>

kubectl logs <pod-name> -n <namespace>

kubectl logs <pod-name> -n <namespace> --previous

### Possible Causes

- Application startup exception
- Invalid command
- Missing environment variable
- Missing ConfigMap
- Missing Secret
- Dependency unavailable
- Liveness probe failure
- OOM termination
- Permission failure

### Resolution

Correct the verified root cause.

Do not repeatedly restart the Pod without investigation.

### Validation

- Restart count stabilizes
- Pod becomes Ready
- Service endpoint exists
- Application health succeeds
- Logs show no repeated startup failure

## Scenario 2 - ImagePullBackOff

### Investigation

kubectl describe pod <pod-name> -n <namespace>

### Possible Causes

- Incorrect repository
- Incorrect image tag
- Private registry authentication failure
- Missing image-pull Secret
- Network failure
- Registry permission issue

### Resolution

Restore a valid versioned image or correct approved registry access.

## Scenario 3 - Pod Pending

### Investigation

kubectl describe pod <pod-name> -n <namespace>

kubectl get events -n <namespace> \
  --sort-by='.metadata.creationTimestamp'

### Possible Causes

- Insufficient CPU
- Insufficient memory
- Untolerated taint
- Node selector mismatch
- Affinity restriction
- Pending PVC
- Admission rejection

### Prevention

- Capacity planning
- Realistic resource requests
- Multi-node architecture
- Scheduling policy testing
- Storage validation

## Scenario 4 - Pod Running But Not Ready

### Possible Causes

- 
