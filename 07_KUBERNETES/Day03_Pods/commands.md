# Day 03 - Kubernetes Pods Commands

## View Pods

kubectl get pods

Screenshot:

01_get_pods.png

## Create Pod

kubectl run nginx --image=nginx

Screenshot:

02_create_pod.png

## View Detailed Pod Information

kubectl describe pod nginx

Screenshot:

03_describe_pod.png

## View Pod YAML

kubectl get pod nginx -o yaml

Screenshot:

04_pod_yaml.png

## View Pod Logs

kubectl logs nginx

Screenshot:

05_pod_logs.png

## Access Pod

kubectl exec -it nginx -- bash

Screenshot:

06_exec_pod.png

## Delete Pod

kubectl delete pod nginx

Screenshot:

07_delete_pod.png

## Watch Pod Status

kubectl get pods -w

Screenshot:

08_watch_pods.png

## View Wide Output

kubectl get pods -o wide

Screenshot:

09_pod_details.png

## View All Resources

kubectl get all

Screenshot:

10_all_resources.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
