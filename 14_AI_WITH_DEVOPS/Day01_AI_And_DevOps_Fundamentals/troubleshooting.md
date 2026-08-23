# AI Troubleshooting

## AI Generated Script Fails

Check:

- Syntax
- Variables
- Permissions
- Dependencies

## AI Generated Terraform Fails

Check:

terraform validate

terraform plan

Review:

- Variables
- Resources
- Providers

The workbook advises validating generated Terraform before applying changes. 【1-ad730b】【2-2ccdce】

## AI Generated YAML Invalid

Check:

kubectl apply --dry-run=client

Review:

- Labels
- Selectors
- API Versions

## AI Generated Jenkinsfile Fails

Check:

- Pipeline Syntax
- Tools
- Credentials

## AI Generated Documentation Incorrect

Verify:

- Architecture
- Commands
- Workflow

## AI Hallucination

Symptoms:

- Non-existing Commands
- Wrong Services
- Invalid Configurations

Response:

- Validate
- Test
- Review Official Documentation

## Security Issue

Check:

- Hardcoded Secrets
- Open Ports
- Excessive Permissions

## Cost Issue

Review:

- Resource Sizes
- Autoscaling
- Storage

## Golden Rule

Never deploy AI generated code directly to production without review.

The workbook consistently emphasizes manual validation and review. 【1-ad730b】【2-2ccdce】
