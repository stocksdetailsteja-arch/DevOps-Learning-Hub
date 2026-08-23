# AI Assisted CI/CD Commands

# Jenkins

systemctl status jenkins

journalctl -u jenkins

## Validate Jenkinsfile

Review Through:

Pipeline Syntax Generator

# GitHub Actions

git add .

git commit -m "workflow update"

git push

# Docker

docker build -t app:v1 .

docker push app:v1

# Kubernetes

kubectl apply --dry-run=client

kubectl rollout status deployment/app

kubectl rollout undo deployment/app

# Terraform

terraform validate

terraform plan

# Ansible

ansible-playbook --syntax-check

ansible-playbook --check

# Security Scan

trivy image app:v1

# Monitoring Validation

kubectl top pods

kubectl get events

# Git Validation

git diff

git status

git log --oneline
