# Capstone Troubleshooting

## Incorrect AI RCA

Check:

- Logs
- Metrics
- Timeline
- Evidence

## Missing Evidence

Collect:

- Alerts
- Metrics
- Logs
- Deployment Changes

## Kubernetes Analyzer Failure

Check:

kubectl logs

kubectl describe pod

kubectl get events

The Kubernetes workbook recommends checking pod state, events, logs, probes, endpoints and networking. 【3-191f4b】【4-8f997a】

## Terraform Review Missing Risk

Check:

terraform plan

terraform validate

## Cost Advisor Wrong Recommendation

Review:

- Ownership
- Availability
- Dependencies

## Hallucinated Finding

Validate:

- Documentation
- Commands
- Environment

## Security Concern

Review:

- Secrets
- Access Controls
- Logs

## Production Checklist

✅ Evidence

✅ Validation

✅ Approval

✅ Documentation

✅ Monitoring

✅ Recovery Validation

❌ Autonomous Production Actions
