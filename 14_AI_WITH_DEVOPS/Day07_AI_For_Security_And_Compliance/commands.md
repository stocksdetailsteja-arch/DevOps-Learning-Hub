# Security Commands

# Linux

id

sudo -l

last

who

cat /etc/passwd

# File Permissions

ls -la

chmod

chown

# SSH

ss -tunlp

systemctl status ssh

# Docker

docker images

docker inspect image_name

docker history image_name

# Kubernetes

kubectl get secrets

kubectl get roles

kubectl get rolebindings

kubectl auth can-i --list

kubectl describe pod pod-name

# Terraform

terraform validate

terraform plan

# AWS IAM

aws iam list-users

aws iam list-roles

aws iam get-role

# Security Groups

aws ec2 describe-security-groups

# CloudTrail

aws cloudtrail describe-trails

# CloudWatch

aws cloudwatch describe-alarms

# Scan Containers

trivy image image_name

# Git Secrets Review

git log

git diff

git grep "password"

git grep "secret"
