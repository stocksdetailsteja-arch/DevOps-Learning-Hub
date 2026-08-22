# Day 01 - Advanced AWS Introduction Troubleshooting

## Scenario 1 - AWS CLI Command Not Found

### Symptom

The terminal reports that aws is not recognized or cannot be found.

### Investigation

- Verify installation

- Check PATH

- Check shell restart requirement

- Confirm operating system architecture

### Resolution

Install or repair AWS CLI using the approved installation method.

### Validation

aws --version

## Scenario 2 - Unable To Locate Credentials

### Symptom

AWS CLI reports that credentials cannot be located.

### Investigation

- Check the intended authentication method

- Check active profile

- Check EC2 role attachment when using an instance role

- Check session expiration

- Check environment-variable configuration

### Security Warning

Do not paste credentials into troubleshooting notes or GitHub.

## Scenario 3 - Region Not Specified

### Symptom

The AWS CLI asks for or reports a missing Region.

### Investigation

aws configure get region

aws configure list

### Resolution

Use an approved profile, configure the intended Region, or pass --region for the command.

## Scenario 4 - Access Denied

### Symptom

AWS returns an authorization error.

### Investigation

- Verify current identity

- Confirm requested action

- Confirm resource scope

- Review applicable IAM policy

- Review permissions boundary

- Review Service Control Policy where applicable

- Review resource-based policy where applicable

### Resolution

Request the minimum required permission through the approved access process.

Do not attach administrator permissions merely to bypass the error.

## Scenario 5 - Expired Security Token

### Symptom

AWS CLI reports an expired token or invalid session.

### Investigation

- Check credential source

- Check session duration

- Check system time

- Check federated login status

### Resolution

Refresh the authenticated session using the approved method.

## Scenario 6 - Resource Not Visible In Console

### Possible Causes

- Wrong Region selected

- Wrong account

- Wrong role or identity

- Resource deleted

- Permission restriction

- Console filter active

### Investigation

Verify account

Verify identity

Verify Region

Clear filters

Search through CLI if authorized

Review audit history where available

## Scenario 7 - Unexpected AWS Charges

### Investigation

- Review billing and cost-management views

- Identify service

- Identify Region

- Review tags

- Review active resources

- Check unattached storage

- Check snapshots

- Check load balancers

- Check NAT gateways

- Check public IP-related resources

- Check managed services

### Immediate Action

Stop or delete unnecessary resources only after confirming ownership, service impact, and organizational procedure.

### Prevention

- Budgets and alerts

- Mandatory tags

- Cleanup checklists

- Automated expiry

- Regular cost reviews

## Scenario 8 - Application Fails After An Availability Zone Event

### Root Cause Possibility

All application capacity was deployed in one Availability Zone.

### Investigation

- Instance placement

- Load-balancer target distribution

- Data-layer architecture

- Health-check results

- Auto Scaling configuration

### Permanent Resolution

Architect across multiple Availability Zones where the availability requirement justifies it.

## Scenario 9 - Multi-Availability-Zone Application Is Still Unavailable

### Possible Causes

- Database remains single-zone

- Load balancer misconfigured

- Health checks fail

- Shared dependency is unavailable

- Route or Security Group issue

- Application state is not replicated

- DNS issue

### Lesson

Multiple Availability Zones for compute alone do not guarantee end-to-end high availability.

## Scenario 10 - CLI Identity Is Different From Expected

### Symptoms

The CLI acts on the wrong account or receives unexpected authorization behavior.

### Investigation

- aws sts get-caller-identity

- aws configure list

- Environment variables

- Named profiles

- Instance role

- Federated session

### Immediate Action

Stop before making changes.

Select the intended identity and verify again.

## Scenario 11 - Wrong Region Used In Automation

### Impact

Resources may be created in an unintended Region or automation may report that resources are missing.

### Investigation

- Default profile Region

- Environment variables

- Command-level Region

- Pipeline variables

- Terraform or SDK provider configuration

### Permanent Resolution

Make Region selection explicit and validate it before resource creation.

## Scenario 12 - Credentials Exposed In GitHub

### Immediate Response

- Follow the organizational security-incident process

- Revoke or rotate exposed credentials

- Review access logs and audit events

- Remove the secret from active content and history using an approved process

- Assess affected resources

### Prevention

- Secret scanning

- Protected credential stores

- Pre-commit checks

- Short-lived credentials

- Least privilege

- Security training

## Scenario 13 - Root User Used For Daily Operations

### Risk

A highly privileged identity is being used unnecessarily.

### Resolution

Create or use an approved IAM or federated administrative identity.

Protect root access for account-level recovery and exceptional tasks.

## Scenario 14 - Console Works But CLI Fails

### Possible Causes

- Different identity

- Different Region

- Missing credentials

- Expired session

- Proxy restriction

- CLI configuration error

### Investigation

Compare account, identity, Region, and network context.

## Scenario 15 - Service Appears Unavailable In Selected Region

### Investigation

- Verify the selected Region

- Check official service availability

- Confirm account restrictions

- Confirm service endpoint

- Check organizational policy

### Resolution

Use an approved Region where the required service and organizational controls are available.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
