# Troubleshooting

## Scenario 1

Unable To SSH Into EC2

Check:

- Security Group
- Public IP
- Route Table
- SSH Key
- NACL

## Scenario 2

Website Not Opening

Check:

- EC2 Running
- Application Running
- Security Group
- ALB
- DNS

## Scenario 3

High CPU On EC2

Check:

- CloudWatch Metrics
- Running Processes
- Recent Deployments

## Scenario 4

RDS Connection Failure

Check:

- Security Group
- Endpoint
- Port
- Credentials

## Scenario 5

S3 Access Denied

Check:

- IAM Policy
- Bucket Policy
- ACL

## Scenario 6

Load Balancer Unhealthy

Check:

- Health Checks
- Target Group
- Application Endpoint

## Scenario 7

Auto Scaling Not Working

Check:

- Scaling Policy
- CloudWatch Alarm
- Launch Template

## Scenario 8

CloudWatch Alarm Not Triggering

Check:

- Threshold
- Metric
- Evaluation Period

## Scenario 9

CloudFormation/Terraform Deployment Failure

Check:

- IAM Permissions
- Limits
- Quotas
- Dependencies

## Production Incident

Issue:

Application Unreachable

Investigation:

1. Verify Route53
2. Verify ALB
3. Verify Target Group
4. Verify EC2
5. Verify Security Groups
6. Verify Application Logs

Root Cause:

Security Group Rule Removed

Resolution:

Restore Rule

Validation:

Application Accessible
