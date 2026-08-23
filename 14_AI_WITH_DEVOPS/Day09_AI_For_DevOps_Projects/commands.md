# Day 09 - AI DevOps Project Commands

## Create Project Directories

mkdir -p projects/ai-log-analyzer

mkdir -p projects/ai-rca-assistant

mkdir -p projects/ai-kubernetes-troubleshooter

mkdir -p projects/ai-infrastructure-reviewer

mkdir -p projects/ai-cicd-failure-analyzer

mkdir -p projects/ai-cloud-cost-advisor

mkdir -p projects/ai-runbook-generator

## Create Common Project Files

touch projects/ai-log-analyzer/README.md

touch projects/ai-log-analyzer/prompts.md

touch projects/ai-log-analyzer/sample_input.log

touch projects/ai-log-analyzer/validation.md

touch projects/ai-log-analyzer/limitations.md

## Linux Evidence Collection

date -u

hostnamectl

uptime

top -b -n 1

free -h

df -h

ss -tunlp

systemctl status nginx

journalctl -u nginx --since "30 minutes ago"

## Sanitized Log Copy

cp application.log application-sanitized.log

## Search For Potential Secret Patterns

grep -Eni \
"password|secret|token|private.key|access.key" \
application-sanitized.log

## Bash Validation

bash -n scripts/collect-evidence.sh

shellcheck scripts/collect-evidence.sh

## Docker Evidence

docker ps -a

docker logs --tail 200 <container-name>

docker inspect <container-name>

docker stats --no-stream

## Kubernetes Workload Status

kubectl get pods -n <namespace> -o wide

kubectl get deployments -n <namespace>

kubectl get replicasets -n <namespace>

kubectl get services -n <namespace>

kubectl get endpoints -n <namespace>

kubectl get ingress -n <namespace>

## Kubernetes Pod Analysis

kubectl describe pod <pod-name> -n <namespace>

kubectl logs <pod-name> -n <namespace>

kubectl logs <pod-name> -n <namespace> --previous

## Kubernetes Events

kubectl get events -n <namespace> \
--sort-by='.metadata.creationTimestamp'

## Kubernetes Resource Usage

kubectl top nodes

kubectl top pods -n <namespace>

## Kubernetes Rollout Evidence

kubectl rollout status deployment/<deployment-name> \
-n <namespace>

kubectl rollout history deployment/<deployment-name> \
-n <namespace>

## Terraform Validation

terraform fmt -check -recursive

terraform validate

terraform plan -out=tfplan

terraform show -no-color tfplan > plan-sanitized.txt

## Terraform State Review

terraform state list

## Ansible Validation

ansible-inventory --graph

ansible all -m ping

ansible-playbook playbooks/site.yml \
--syntax-check

ansible-playbook playbooks/site.yml \
--check \
--diff

## Jenkins Evidence

systemctl status jenkins

journalctl -u jenkins --since "30 minutes ago"

## Git Change Evidence

git status

git log --oneline -10

git diff

git diff --check

## Cloud Identity Validation

aws sts get-caller-identity

## AWS Instance Inventory

aws ec2 describe-instances

## AWS Security Group Inventory

aws ec2 describe-security-groups

## AWS Load Balancers

aws elbv2 describe-load-balancers

## AWS Alarms

aws cloudwatch describe-alarms

## Verify Project Files

find projects -maxdepth 2 -type f | sort

## Git Commit

git add 14_AI_WITH_DEVOPS/Day09_AI_For_DevOps_Projects

git commit -m "Add AI assisted DevOps projects module"

git push origin main
