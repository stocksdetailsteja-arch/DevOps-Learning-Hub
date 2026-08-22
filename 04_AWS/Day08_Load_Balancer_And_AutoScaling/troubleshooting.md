# Day 08 - Load Balancer And Auto Scaling Troubleshooting

## Scenario 1

ALB Not Accessible

Cause:

Security Group

Resolution:

Allow HTTP/HTTPS.

## Scenario 2

Targets Unhealthy

Cause:

Application Not Running

Resolution:

Verify service and health endpoint.

## Scenario 3

Auto Scaling Not Triggering

Cause:

Policy Misconfiguration

Resolution:

Check CloudWatch Alarm.

## Scenario 4

Traffic Not Distributed

Cause:

Single Healthy Instance

Resolution:

Verify Target Group.

## Scenario 5 (5+ Years)

Production Traffic Spike

Investigation:

- CPU

- Target Health

- Scaling Activity

- Error Rates

Resolution:

Scale and optimize application.

## Scenario 6 (5+ Years)

ALB Returning 503

Investigation:

- Target Group

- Security Group

- Listener Rule

- Health Check

Resolution:

Restore healthy targets.

## Scenario 7 (5+ Years)

Unexpected Cost Increase

Investigation:

- Auto Scaling Activity

- ALB Usage

- Running Instances

Resolution:

Review scaling policies.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
