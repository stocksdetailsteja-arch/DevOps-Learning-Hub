# Day 10 - Real World Kubernetes Project Commands

## Verify Cluster

kubectl cluster-info

Screenshot:

01_cluster_info.png

## Verify Nodes

kubectl get nodes

Screenshot:

02_nodes.png

## Deploy Helm Chart

helm install project-app ./project-chart

Screenshot:

03_helm_install.png

## View Helm Releases

helm list

Screenshot:

04_helm_list.png

## Verify Pods

kubectl get pods

Screenshot:

05_pods.png

## Verify Services

kubectl get svc

Screenshot:

06_services.png

## Verify Ingress

kubectl get ingress

Screenshot:

07_ingress.png

## Review Logs

kubectl logs deployment/project-app

Screenshot:

08_logs.png

## Review Events

kubectl get events

Screenshot:

09_events.png

## View Rollout Status

kubectl rollout status deployment/project-app

Screenshot:

10_rollout_status.png

## View Rollout History

kubectl rollout history deployment/project-app

Screenshot:

11_rollout_history.png

## Rollback Release

kubectl rollout undo deployment/project-app

Screenshot:

12_rollback.png

## Scale Deployment

kubectl scale deployment project-app --replicas=5

Screenshot:

13_scale_deployment.png

## Verify Resource Usage

kubectl top pod

Screenshot:

14_resource_usage.png

## Verify Endpoints

kubectl get endpoints

Screenshot:

15_endpoints.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
