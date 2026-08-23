# Day 10 - Real World Kubernetes Project Practice Session

## Project Goal

Deploy A Production-Style Multi-Tier Kubernetes Application Using Enterprise Best Practices.

## Lab Environment

Use:

- Kubernetes Cluster

- kubectl

- Helm

- Ingress Controller

- StorageClass

- Monitoring Stack

## Phase 1

Validate Cluster

Commands:

kubectl cluster-info

kubectl get nodes

Screenshots:

01_cluster_info.png

02_nodes.png

## Phase 2

Deploy Helm Chart

Commands:

helm install project-app ./project-chart

Screenshots:

03_helm_install.png

04_helm_list.png

## Phase 3

Verify Workloads

Commands:

kubectl get pods

kubectl get deployments

kubectl get rs

Screenshots:

05_pods.png

06_deployments.png

## Phase 4

Verify Services

Commands:

kubectl get svc

kubectl get endpoints

Screenshots:

07_services.png

08_endpoints.png

## Phase 5

Configure Ingress

Commands:

kubectl get ingress

kubectl describe ingress

Screenshots:

09_ingress.png

10_ingress_details.png

## Phase 6

Validate Application

Commands:

curl APP_URL

Screenshots:

11_application_validation.png

## Phase 7

Verify ConfigMaps & Secrets

Commands:

kubectl get configmaps

kubectl get secrets

Screenshots:

12_configmaps.png

13_secrets_redacted.png

## Phase 8

Verify Persistent Storage

Commands:

kubectl get pvc

kubectl get pv

Screenshots:

14_pvc.png

15_pv.png

## Phase 9

Configure Scaling

Commands:

kubectl scale deployment project-app --replicas=5

Screenshots:

16_scaling.png

## Phase 10

Perform Rolling Update

Commands:

kubectl set image deployment/project-app

kubectl rollout status deployment/project-app

Screenshots:

17_rolling_update.png

## Phase 11

Perform Rollback

Commands:

kubectl rollout undo deployment/project-app

Screenshots:

18_rollback.png

## Phase 12

Monitor Resources

Commands:

kubectl top pod

kubectl top node

Screenshots:

19_monitoring.png

## Phase 13

Review Events & Logs

Commands:

kubectl get events

kubectl logs deployment/project-app

Screenshots:

20_events.png

21_logs.png

## Phase 14

Document Production Architecture

Architecture:

Users

↓

Load Balancer

↓

Ingress

↓

Service

↓

Deployment

↓

Pods

↓

PVC

↓

Storage

Screenshot:

22_architecture.png

## Phase 15

Project Completion

Screenshot:

23_day10_completion.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
