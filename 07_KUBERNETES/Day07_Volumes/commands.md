# Day 07 - Kubernetes Volumes Commands

## View Persistent Volumes

kubectl get pv

Screenshot:

01_get_pv.png

## View PVC

kubectl get pvc

Screenshot:

02_get_pvc.png

## Describe PV

kubectl describe pv

Screenshot:

03_describe_pv.png

## Describe PVC

kubectl describe pvc

Screenshot:

04_describe_pvc.png

## View Storage Classes

kubectl get storageclass

Screenshot:

05_get_storageclass.png

## Describe StorageClass

kubectl describe storageclass

Screenshot:

06_describe_storageclass.png

## Export PV YAML

kubectl get pv -o yaml

Screenshot:

07_pv_yaml.png

## Export PVC YAML

kubectl get pvc -o yaml

Screenshot:

08_pvc_yaml.png

## Delete PVC

kubectl delete pvc my-pvc

Screenshot:

09_delete_pvc.png

## View All Storage Resources

kubectl get pv,pvc,storageclass

Screenshot:

10_storage_resources.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
