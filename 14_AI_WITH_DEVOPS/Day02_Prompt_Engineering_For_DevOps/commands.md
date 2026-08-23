# Prompt Engineering Commands

## Prompt Validation Checklist

Before Using AI Output Verify:

- Syntax
- Permissions
- Cost
- Security
- Reliability

## Bash Validation

bash -n script.sh

## Terraform Validation

terraform fmt

terraform validate

terraform plan

The workbook specifically recommends reviewing generated Terraform and inspecting plans before applying changes. 【1-666175】【2-945384】

## Kubernetes Validation

kubectl apply --dry-run=client

## Docker Validation

docker build .

## Ansible Validation

ansible-playbook --syntax-check

ansible-playbook --check

The workbook explicitly highlights syntax-check and check mode for generated artifacts. 【1-666175】【2-945384】

## Monitoring Validation

PromQL Review

Dashboard Review

Alert Review

## Documentation Review

Manual Verification

Architecture Validation

Procedure Validation
