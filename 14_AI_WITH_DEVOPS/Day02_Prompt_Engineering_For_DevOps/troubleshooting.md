# Prompt Engineering Troubleshooting

## AI Output Too Generic

Problem:

Prompt Too Short

Fix:

Provide:

- Role
- Context
- Requirements

## Wrong Terraform Generated

Check:

- Missing Requirements
- Missing Architecture Details

Validate:

terraform plan

## Wrong Kubernetes YAML

Check:

- Namespace
- Labels
- Selectors
- Probes

Validate:

kubectl apply --dry-run=client

## Security Misconfiguration

Review:

- Ports
- IAM Permissions
- Secrets

## Costly Infrastructure Generated

Review:

- Instance Size
- Autoscaling
- Storage

The AI workbook specifically recommends reviewing generated infrastructure for cost and security. 【1-666175】【2-945384】

## Incorrect RCA

Check:

- Logs
- Metrics
- Alerts
- Timeline

The workbook recommends collecting evidence including timeline, logs, metrics and alerts prior to RCA generation. 【1-666175】【2-945384】

## Hallucinated Commands

Validate:

- Official Documentation
- Lab Environment
- Syntax

## Production Safety Checklist

Before Deployment:

✅ Syntax Review

✅ Security Review

✅ Cost Review

✅ Architecture Review

✅ Rollback Plan

✅ Monitoring Plan

The workbook emphasizes review and validation prior to operational use. 【1-666175】【2-945384】
