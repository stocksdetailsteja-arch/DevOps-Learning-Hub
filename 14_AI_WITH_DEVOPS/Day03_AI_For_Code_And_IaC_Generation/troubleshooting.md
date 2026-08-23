# AI Code Generation Troubleshooting

## Bash Script Fails

Check:

bash -n script.sh

shellcheck script.sh

## Docker Build Fails

Check:

docker build .

Review:

- Base Image
- Syntax
- Dependencies

## Kubernetes YAML Invalid

Check:

kubectl apply --dry-run=client

Verify:

- Labels
- Selectors
- Namespace

## Terraform Validation Fails

Run:

terraform validate

terraform plan

Review:

- Variables
- Resources
- Providers

The workbook recommends validate and plan before implementation. 【1-532efb】【2-2262b4】

## Ansible Playbook Fails

Run:

ansible-playbook --syntax-check

Check:

- Variables
- YAML
- Inventory

## Jenkins Pipeline Fails

Check:

- Groovy Syntax
- Credentials
- Pipeline Stages

## Security Issue Found

Review:

- Secrets
- IAM
- Security Groups
- Root Usage

## Cost Issue Found

Review:

- EC2 Sizes
- Storage
- Data Transfer

## Hallucinated Resources

Symptoms:

- Invalid Commands
- Wrong Services
- Deprecated APIs

Action:

Validate against documentation and test environments.

## Production Readiness Checklist

✅ Validation

✅ Security Review

✅ Cost Review

✅ Architecture Review

✅ Monitoring

✅ Rollback Plan

❌ Direct Production Deployment
