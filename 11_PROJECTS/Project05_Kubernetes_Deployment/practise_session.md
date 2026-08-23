# Project 05 - Practice Session

## Lab 1 - Verify Environment

Run:

kubectl version --client

kubectl cluster-info

kubectl get nodes -o wide

Expected:

- kubectl available
- Current context configured
- Nodes report Ready

Capture:

- 01_cluster_information.png
- 02_node_status.png

## Lab 2 - Create Project Structure

Create all project folders and files.

Run:

tree Project05_Kubernetes_Deployment

Verify:

- Documentation files exist
- Manifest files exist
- Scripts exist
- Screenshot folder exists

## Lab 3 - Review Container Image

Confirm:

- Image exists in registry
- Fixed version tag is used
- Container runs as non-root
- Health endpoints exist
- Image does not contain secrets

Do not use:

latest

for the project image.

## Lab 4 - Validate Manifests

Run:

kubectl apply --dry-run=client \
  -f manifests/00-namespace.yaml

kubectl apply --dry-run=client \
  -k manifests

Correct any syntax errors before deployment.

## Lab 5 - Create Namespace

Run:

kubectl apply \
  -f manifests/00-namespace.yaml

kubectl get namespace devops-portfolio

Capture:

- 03_namespace_creation.png

## Lab 6 - Create Secret Securely

Create Secret using a local command.

Do not commit real credentials.

Verify only metadata:

kubectl describe secret springboot-secret \
  -n devops-portfolio

Capture:

- 05_secret_creation.png

Ensure the screenshot does not display values.

## Lab 7 - Deploy ConfigMap And Storage

Run:

kubectl apply \
  -f manifests/01-configmap.yaml

kubectl apply \
  -f manifests/03-persistent-volume-claim.yaml

Validate:

kubectl get configmap \
  -n devops-portfolio

kubectl get pvc \
  -n devops-portfolio

Capture:

- 04_configmap_creation.png

## Lab 8 - Deploy Application

Run:

kubectl apply \
  -f manifests/04-deployment.yaml

kubectl rollout status \
  deployment/springboot-application \
  -n devops-portfolio \
  --timeout=180s

kubectl get pods \
  -n devops-portfolio \
  -o wide

Capture:

- 06_deployment_applied.png
- 07_pods_running.png
- 15_rollout_status.png

## Lab 9 - Create Service

Run:

kubectl apply \
  -f manifests/05-service.yaml

kubectl get service \
  -n devops-portfolio

kubectl get endpoints \
  -n devops-portfolio

Expected:

- Service exists
- Endpoint addresses exist
- Service selector matches Pod labels

Capture:

- 08_service_created.png
- 09_endpoints_validation.png

## Lab 10 - Validate Application

Run:

kubectl port-forward \
  -n devops-portfolio \
  service/springboot-service \
  8080:80

From another terminal:

curl -f http://localhost:8080/actuator/health

Capture:

- 10_application_access.png

## Lab 11 - Validate Probes

Run:

kubectl describe pod \
  -n devops-portfolio \
  <pod-name>

Review:

- Startup probe
- Readiness probe
- Liveness probe
- Pod conditions
- Events

Capture:

- 11_readiness_probe.png
- 12_liveness_probe.png

## Lab 12 - Validate Resources

Run:

kubectl describe deployment springboot-application \
  -n devops-portfolio

Review:

- CPU request
- CPU limit
- Memory request
- Memory limit

Capture:

- 13_resource_configuration.png

## Lab 13 - Configure Ingress

Prerequisite:

- Ingress controller installed

Apply:

kubectl apply \
  -f manifests/06-ingress.yaml

Verify:

kubectl get ingress \
  -n devops-portfolio

kubectl describe ingress springboot-ingress \
  -n devops-portfolio

Capture:

- 14_ingress_created.png

## Lab 14 - Perform Rolling Update

Update image:

kubectl set image \
  deployment/springboot-application \
  springboot-application=your-registry/springboot-application:1.1.0 \
  -n devops-portfolio

Watch rollout:

kubectl rollout status \
  deployment/springboot-application \
  -n devops-portfolio

Observe Pods:

kubectl get pods \
  -n devops-portfolio \
  -w

Capture:

- 16_rolling_update.png

## Lab 15 - Perform Rollback

View history:

kubectl rollout history \
  deployment/springboot-application \
  -n devops-portfolio

Rollback:

kubectl rollout undo \
  deployment/springboot-application \
  -n devops-portfolio

Validate:

kubectl rollout status \
  deployment/springboot-application \
  -n devops-portfolio

Capture:

- 17_rollback_validation.png

## Lab 16 - Simulate Pod Failure

Delete one Pod:

kubectl delete pod \
  -n devops-portfolio \
  <pod-name>

Watch recovery:

kubectl get pods \
  -n devops-portfolio \
  -w

Expected:

- Deployment creates replacement Pod
- Desired replica count is restored

Capture:

- 18_failure_simulation.png
- 19_recovery_validation.png

## Lab 17 - Simulate ImagePullBackOff

Use a nonexistent image version in the controlled lab.

Review:

kubectl get pods \
  -n devops-portfolio

kubectl describe pod \
  -n devops-portfolio \
  <failing-pod>

Review events.

Restore the valid image immediately.

## Lab 18 - Simulate Service Selector Failure

Temporarily change the Service selector so it does not match Pod labels.

Verify:

kubectl get endpoints \
  -n devops-portfolio

Expected:

- Service has no endpoints
- Application access fails

Restore the correct selector.

Verify endpoint recovery.

## Lab 19 - Validate HPA Concepts

Apply HPA only when the cluster has the required metrics support.

Run:

kubectl apply \
  -f manifests/07-hpa.yaml

kubectl get hpa \
  -n devops-portfolio

Document:

- Current replicas
- Desired replicas
- CPU target
- Metric availability

## Lab 20 - Push To GitHub

Before committing:

- Remove real Secret manifests
- Search for credentials
- Validate YAML
- Review screenshots
- Confirm no kubeconfig is included
- Confirm no private keys are included

Run:

git status

git diff --check

git add Project05_Kubernetes_Deployment

git commit -m "Add Kubernetes application deployment project"

git push origin main

Capture:

- 20_github_project.png

## Lab 21 - Cleanup

Save:

- Documentation
- Manifests
- Scripts
- Screenshots
- Rollout evidence
- Troubleshooting evidence

Delete project namespace:

kubectl delete namespace devops-portfolio

Verify deletion.

If using AWS:

- Delete unused load balancers
- Delete unused EBS volumes
- Delete unused clusters
- Review AWS Billing
