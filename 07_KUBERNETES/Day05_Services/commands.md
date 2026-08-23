# Day 05 - Kubernetes Services Commands

## View Services

kubectl get services

Screenshot:

01_get_services.png

## Create Service

kubectl expose deployment nginx --port=80

Screenshot:

02_create_service.png

## View Detailed Service

kubectl describe service nginx

Screenshot:

03_describe_service.png

## View Endpoints

kubectl get endpoints

Screenshot:

04_get_endpoints.png

## Create NodePort Service

kubectl expose deployment nginx --type=NodePort --port=80

Screenshot:

05_nodeport_service.png

## Create LoadBalancer Service

kubectl expose deployment nginx --type=LoadBalancer --port=80

Screenshot:

06_loadbalancer_service.png

## View Service YAML

kubectl get service nginx -o yaml

Screenshot:

07_service_yaml.png

## Delete Service

kubectl delete service nginx

Screenshot:

08_delete_service.png

## View All Resources

kubectl get all

Screenshot:

09_all_resources.png

## Verify DNS

kubectl get svc

Screenshot:

10_dns_validation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
