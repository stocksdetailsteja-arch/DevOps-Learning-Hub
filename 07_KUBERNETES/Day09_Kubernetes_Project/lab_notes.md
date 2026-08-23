# Day 09 - Kubernetes Project Lab Notes

## Objective

Deploy and validate an end-to-end Kubernetes application using Deployments, Services, ConfigMaps, Secrets, persistent storage, and Ingress.

## Environment Used

- Kubernetes Cluster

- kubectl

- Container Registry

- Ingress Controller

- StorageClass

## Resources Created

- Namespace

- ConfigMap

- Secret

- PersistentVolumeClaim

- Deployment

- ReplicaSet

- Pods

- Service

- Endpoints

- Ingress

## Commands Executed

- kubectl apply

- kubectl get

- kubectl describe

- kubectl logs

- kubectl rollout status

- kubectl rollout history

- kubectl rollout undo

- kubectl scale

- kubectl set image

- kubectl delete

## Observations

- Deployment maintained the desired number of Pods.

- Service provided stable access to matching Pods.

- Endpoints depended on correct labels and selectors.

- ConfigMap externalized non-sensitive configuration.

- Secret provided sensitive configuration references.

- PVC preserved data beyond an individual Pod lifecycle.

- Ingress routed external HTTP traffic to the Service.

- Events and logs supported troubleshooting.

- Rollback restored the previous Deployment revision.

## Results

Successfully:

- Created all project resources

- Deployed the application

- Validated configuration

- Validated Service endpoints

- Validated Ingress routing

- Validated persistent storage

- Scaled the Deployment

- Performed a rolling update

- Performed a rollback

- Cleaned up project resources

## Lessons Learned

- Validate the current cluster context before applying manifests.

- Use labels consistently.

- Never hardcode production secrets.

- Verify endpoints before debugging Ingress.

- Use explicit image versions.

- Review rollout status after changes.

- Validate application health after deployment and rollback.

- Review storage retention before PVC deletion.

## Screenshot Location

Day09_Kubernetes_Project_Lab_Screenshots/

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
