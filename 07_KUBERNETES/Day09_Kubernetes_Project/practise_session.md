# Day 09 - Kubernetes Project Practice Session

## Project Name

Kubernetes Application Deployment Project

## Lab Environment

Use one of:

- Minikube

- kind

- EKS learning cluster

- AKS learning cluster

- Another approved Kubernetes lab cluster

## Phase 1 - Validate Cluster

Run:

kubectl config current-context

kubectl cluster-info

kubectl get nodes

Expected:

- Correct context

- API Server reachable

- Node available

Screenshots:

01_cluster_validation.png

02_node_validation.png

## Phase 2 - Create Project Structure

Create:

kubernetes-project/

Files:

- 00-namespace.yaml

- 01-configmap.yaml

- 02-secret-template.yaml

- 03-pvc.yaml

- 04-deployment.yaml

- 05-service.yaml

- 06-ingress.yaml

Screenshot:

03_manifest_structure.png

## Phase 3 - Create Namespace

Namespace Name:

devops-project

Apply:

kubectl apply -f 00-namespace.yaml

Validate:

kubectl get namespace devops-project

Screenshot:

04_namespace.png

## Phase 4 - Create ConfigMap

Suggested lab configuration:

- APP_NAME=project-app

- APP_ENV=learning

- LOG_LEVEL=INFO

Apply:

kubectl apply -f 01-configmap.yaml

Validate:

kubectl get configmap -n devops-project

Screenshot:

05_configmap.png

## Phase 5 - Create Lab Secret

Use a non-production lab value only.

Apply:

kubectl apply -f 02-secret-template.yaml

Validate without revealing data:

kubectl get secret -n devops-project

Screenshot:

06_secret_redacted.png

## Phase 6 - Create PVC

Apply:

kubectl apply -f 03-pvc.yaml

Validate:

kubectl get pvc -n devops-project

Expected:

PVC becomes Bound when compatible storage is available.

Screenshot:

07_pvc.png

## Phase 7 - Deploy Application

Apply:

kubectl apply -f 04-deployment.yaml

Validate:

kubectl rollout status deployment/project-app -n devops-project

kubectl get pods -n devops-project

Screenshot:

08_deployment.png

## Phase 8 - Create Service

Apply:

kubectl apply -f 05-service.yaml

Validate:

kubectl get service -n devops-project

kubectl get endpoints -n devops-project

Screenshot:

09_service_endpoints.png

## Phase 9 - Create Ingress

Prerequisite:

Ingress Controller must already be available.

Apply:

kubectl apply -f 06-ingress.yaml

Validate:

kubectl get ingress -n devops-project

kubectl describe ingress -n devops-project

Screenshot:

10_ingress.png

## Phase 10 - Validate Application

Validation methods may include:

- Ingress URL

- Port forwarding

- Internal Service access

- Application health endpoint

Record the actual validation method used.

Screenshot:

11_application_validation.png

## Phase 11 - Validate Configuration

Check that the application received:

- ConfigMap values

- Secret references

- Required environment variables

Do not display real secret values.

Screenshot:

12_configuration_validation_redacted.png

## Phase 12 - Validate Persistence

Write test data to the mounted path

Delete the application Pod

Allow the Deployment to recreate the Pod

Confirm that the test data remains

Screenshot:

13_persistence_validation.png

## Phase 13 - Scale Application

Run:

kubectl scale deployment project-app --replicas=3 -n devops-project

Validate:

kubectl get pods -n devops-project

Screenshot:

14_scaling_validation.png

## Phase 14 - Perform Rolling Update

Update the Deployment to a tested, versioned image.

Validate:

kubectl rollout status deployment/project-app -n devops-project

kubectl rollout history deployment/project-app -n devops-project

Screenshot:

15_rolling_update.png

## Phase 15 - Perform Rollback

Run:

kubectl rollout undo deployment/project-app -n devops-project

Validate:

kubectl rollout status deployment/project-app -n devops-project

Validate application health again.

Screenshot:

16_rollback_validation.png

## Phase 16 - Review Troubleshooting Data

Run:

kubectl get pods -n devops-project -o wide

kubectl get events -n devops-project --sort-by=.metadata.creationTimestamp

kubectl logs deployment/project-app -n devops-project

Screenshot:

17_troubleshooting_evidence.png

## Phase 17 - Document Architecture

Document:

Container Registry

↓

Deployment

↓

ReplicaSet

↓

Pods

↓

Service

↓

Ingress

↓

Users

Add:

ConfigMap

Secret

PVC

Screenshot:

18_project_architecture.png

## Phase 18 - Cleanup

Before cleanup:

- Save Markdown files

- Save redacted screenshots

- Push repository changes

- Review storage retention

Cleanup:

kubectl delete namespace devops-project

Validate:

kubectl get namespace devops-project

Screenshot:

19_cleanup_validation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
