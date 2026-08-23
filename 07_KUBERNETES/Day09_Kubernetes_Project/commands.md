# Day 09 - Kubernetes Project Commands

## Create Project Directory

mkdir -p kubernetes-project

cd kubernetes-project

Screenshot:

01_project_directory.png

## Verify Current Context

kubectl config current-context

Purpose:

Confirm the intended cluster before applying resources.

Screenshot:

02_current_context.png

## Verify Access

kubectl auth can-i create deployments

kubectl auth can-i create services

kubectl auth can-i create configmaps

kubectl auth can-i create secrets

Screenshot:

03_access_validation.png

## Apply Namespace

kubectl apply -f 00-namespace.yaml

Screenshot:

04_namespace_creation.png

## Apply ConfigMap

kubectl apply -f 01-configmap.yaml

Screenshot:

05_configmap_creation.png

## Apply Secret

kubectl apply -f 02-secret-template.yaml

Security note:

Use only lab values.

Do not capture or upload actual Secret values.

Screenshot:

06_secret_creation_redacted.png

## Apply PVC

kubectl apply -f 03-pvc.yaml

Screenshot:

07_pvc_creation.png

## Apply Deployment

kubectl apply -f 04-deployment.yaml

Screenshot:

08_deployment_creation.png

## Apply Service

kubectl apply -f 05-service.yaml

Screenshot:

09_service_creation.png

## Apply Ingress

kubectl apply -f 06-ingress.yaml

Screenshot:

10_ingress_creation.png

## View Project Resources

kubectl get all -n devops-project

Screenshot:

11_project_resources.png

## View Configuration Resources

kubectl get configmap,secret -n devops-project

Do not use output modes that reveal Secret values in screenshots.

Screenshot:

12_configuration_resources.png

## View Persistent Storage

kubectl get pvc -n devops-project

Screenshot:

13_pvc_status.png

## View Ingress

kubectl get ingress -n devops-project

Screenshot:

14_ingress_status.png

## Verify Deployment Rollout

kubectl rollout status deployment/project-app -n devops-project

Screenshot:

15_rollout_status.png

## View Pods With Node Details

kubectl get pods -n devops-project -o wide

Screenshot:

16_pods_wide.png

## View Service Endpoints

kubectl get endpoints -n devops-project

Screenshot:

17_service_endpoints.png

## Review Application Logs

kubectl logs deployment/project-app -n devops-project

Screenshot:

18_application_logs_redacted.png

## View Events

kubectl get events -n devops-project --sort-by=.metadata.creationTimestamp

Screenshot:

19_namespace_events.png

## Scale Deployment

kubectl scale deployment project-app --replicas=3 -n devops-project

Screenshot:

20_scale_deployment.png

## Update Image

Command pattern:

kubectl set image deployment/project-app project-app=IMAGE_NAME:VERSION -n devops-project

Replace:

IMAGE_NAME:VERSION

with the tested image and explicit version tag.

Screenshot:

21_image_update.png

## Review Rollout History

kubectl rollout history deployment/project-app -n devops-project

Screenshot:

22_rollout_history.png

## Roll Back Deployment

kubectl rollout undo deployment/project-app -n devops-project

Screenshot:

23_rollout_undo.png

## Delete Project Namespace

kubectl delete namespace devops-project

Warning:

This deletes namespaced project resources.

Review persistent-storage retention before deletion.

Screenshot:

24_project_cleanup.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
