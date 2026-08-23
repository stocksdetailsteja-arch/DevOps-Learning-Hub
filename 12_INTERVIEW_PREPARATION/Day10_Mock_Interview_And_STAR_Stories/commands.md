# Interview Preparation Commands

## Linux

top

free -h

df -h

journalctl -xe

## Git

git log

git status

git branch

## AWS

aws sts get-caller-identity

aws ec2 describe-instances

## Jenkins

systemctl status jenkins

## Docker

docker ps

docker logs container_id

## Kubernetes

kubectl get pods

kubectl describe pod pod-name

kubectl logs pod-name

## Terraform

terraform plan

terraform state list

## Ansible

ansible all -m ping

ansible-playbook site.yml --check

## Monitoring

kubectl top pods

aws cloudwatch describe-alarms

PromQL:

up

rate(http_requests_total[5m])
