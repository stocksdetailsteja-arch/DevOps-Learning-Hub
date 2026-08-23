# AI Generated Code Validation Commands

# Bash

bash -n script.sh

shellcheck script.sh

# Python

python3 script.py

python3 -m py_compile script.py

# Docker

docker build .

docker image inspect image_name

# Kubernetes

kubectl apply --dry-run=client

kubectl explain deployment

# Terraform

terraform fmt

terraform validate

terraform plan

The AI workbook specifically recommends Terraform validation and plan review before apply. 【1-532efb】【2-2262b4】

# Ansible

ansible-playbook --syntax-check

ansible-playbook --check

The workbook highlights syntax-check and check mode as validation steps. 【1-532efb】【2-2262b4】

# Jenkins

Pipeline Syntax Generator

# Security

trivy image image_name

# Git Review

git
