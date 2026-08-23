# Capstone Commands

# Evidence Collection

date

uptime

top

free -h

df -h

journalctl -xe

# Docker

docker ps

docker logs container

docker inspect container

# Kubernetes

kubectl get pods -A

kubectl describe pod pod

kubectl logs pod

kubectl get events

kubectl top pods

# Terraform

terraform fmt

terraform validate

terraform plan

# Jenkins

systemctl status jenkins

journalctl -u jenkins

# Git

git log --oneline

git diff

# AWS

aws sts get-caller-identity

aws cloudwatch describe-alarms

aws ec2 describe-instances

# Validation

ansible-playbook --syntax-check

kubectl apply --dry-
