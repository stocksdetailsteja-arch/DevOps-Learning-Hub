# Day 06 - ConfigMaps & Secrets Commands

## Create ConfigMap

kubectl create configmap app-config --from-literal=APP_ENV=prod

Screenshot:

01_create_configmap.png

## View ConfigMaps

kubectl get configmaps

Screenshot:

02_get_configmaps.png

## Describe ConfigMap

kubectl describe configmap app-config

Screenshot:

03_describe_configmap.png

## Create Secret

kubectl create secret generic db-secret --from-literal=password=admin123

Screenshot:

04_create_secret.png

## View Secrets

kubectl get secrets

Screenshot:

05_get_secrets.png

## Describe Secret

kubectl describe secret db-secret

Screenshot:

06_describe_secret.png

## Export Secret YAML

kubectl get secret db-secret -o yaml

Screenshot:

07_secret_yaml.png

## View ConfigMap YAML

kubectl get configmap app-config -o yaml

Screenshot:

08_configmap_yaml.png

## Delete ConfigMap

kubectl delete configmap app-config

Screenshot:

09_delete_configmap.png

## Delete Secret

kubectl delete secret db-secret

Screenshot:

10_delete_secret.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
