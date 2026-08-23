# Day 04 - Kubernetes Deployments Commands

## Create Deployment

kubectl create deployment nginx --image=nginx

Screenshot:

01_create_deployment.png

## View Deployments

kubectl get deployments

Screenshot:

02_get_deployments.png

## View ReplicaSets

kubectl get replicasets

Screenshot:

03_get_replicasets.png

## View Pods

kubectl get pods

Screenshot:

04_get_pods.png

## Describe Deployment

kubectl describe deployment nginx

Screenshot:

05_describe_deployment.png

## Scale Deployment

kubectl scale deployment nginx --replicas=3

Screenshot:

06_scale_deployment.png

## Verify Scaling

kubectl get pods

Screenshot:

07_verify_scaling.png

## Update Image

kubectl set image deployment/nginx nginx=nginx:latest

Screenshot:

08_update_image.png

## Rollout Status

kubectl rollout status deployment/nginx

Screenshot:

09_rollout_status.png

## Rollback Deployment

kubectl rollout undo deployment/nginx

Screenshot:

10_rollback_deployment.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
