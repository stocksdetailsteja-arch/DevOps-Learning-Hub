# AI Security Troubleshooting

## AI Reports Excessive Permissions

Validate:

- Actual Usage
- Business Need
- Existing Controls

## AI Misses Security Risk

Perform:

- Manual Review
- Security Scan
- Architecture Review

## Secret Exposure Found

Actions:

- Rotate Secret
- Remove Secret
- Audit Access
- Update Controls

The Ansible workbook recommends avoiding plaintext credentials and protecting secrets through vaults or approved secret stores. 【5-743bf1】【6-20842f】

## Open Security Group

Review:

- Source CIDR
- Port Usage
- Business Requirement

## Kubernetes Security Incident

Collect:

kubectl get events

kubectl describe pod

Audit Logs

## Terraform Security Issue

Review:

terraform plan

IAM Policies

Security Groups

## Docker Image Risk

Check:

- Vulnerabilities
- User Context
- Package Versions

## Compliance Audit Failure

Review:

- Documentation
- Controls
- Evidence

## AI Hallucinated Vulnerability

Validate With:

- Security Scanners
- Vendor Advisories
- Documentation

## Production Security Checklist

✅ IAM Review

✅ Secret Review

✅ Encryption Review

✅ Security Scan

✅ Audit Logging

✅ Monitoring

✅ Compliance Evidence

❌ Blind Trust
