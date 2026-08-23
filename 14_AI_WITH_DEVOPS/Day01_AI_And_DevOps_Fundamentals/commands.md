# AI For DevOps Commands And Tools

## Microsoft Copilot

Used For:

- Documentation
- Troubleshooting
- RCA
- Scripts

## GitHub Copilot

Used For:

- Code Completion
- Script Creation
- Infrastructure Generation

## Shell Validation

bash -n script.sh

## Terraform Validation

terraform fmt

terraform validate

terraform plan

The workbook explicitly recommends validating generated Terraform before apply. 【1-ad730b】【2-2ccdce】

## Kubernetes Validation

kubectl apply --dry-run=client

The workbook highlights dry-run validation concepts for Kubernetes manifests. 【1-ad730b】【2-2ccdce】

## Docker Validation

docker build .

The workbook recommends reviewing Dockerfiles and image security before use. 【1-ad730b】【2-2ccdce】

## Ansible Validation

ansible-playbook --syntax-check

ansible-playbook --check

The workbook explicitly recommends syntax-check and check mode. 【1-ad730b】【2-2ccdce】

## Documentation Generation

README.md

Runbook.md

RCA.md

Architecture.md
