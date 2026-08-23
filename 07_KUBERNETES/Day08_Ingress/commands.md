# Day 08 - Kubernetes Ingress Commands

## View Ingress Resources

kubectl get ingress

Screenshot:

01_get_ingress.png

## Describe Ingress

kubectl describe ingress app-ingress

Screenshot:

02_describe_ingress.png

## Export Ingress YAML

kubectl get ingress app-ingress -o yaml

Screenshot:

03_ingress_yaml.png

## View Services

kubectl get services

Screenshot:

04_services.png

## View Endpoints

kubectl get endpoints

Screenshot:

05_endpoints.png

## View Ingress Controller Pods

kubectl get pods -n ingress-nginx

Screenshot:

06_controller_pods.png

## Verify Ingress Controller

kubectl get all -n ingress-nginx

Screenshot:

07_controller_status.png

## View Events

kubectl get events

Screenshot:

08_ingress_events.png

## Test Routing

curl http://application-url

Screenshot:

09_route_validation.png

## Verify TLS

curl -k https://application-url

Screenshot:

10_tls_validation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
