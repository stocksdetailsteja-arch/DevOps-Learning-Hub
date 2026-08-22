# Day 06 - VPC Troubleshooting

## Scenario 1

EC2 Cannot Access Internet

Cause:

Route Table Missing IGW.

Resolution:

Review Routes.

## Scenario 2

Private EC2 Cannot Download Packages

Cause:

Missing NAT Gateway.

Resolution:

Configure NAT.

## Scenario 3

Application Not Reachable

Cause:

Security Group.

Resolution:

Review Inbound Rules.

## Scenario 4

Traffic Blocked Unexpectedly

Cause:

NACL Rule.

Resolution:

Review Allow/Deny Entries.

## Scenario 5 (5+ Years)

Production Application Unreachable

Investigation:

- Route Tables

- Security Groups

- NACL

- Load Balancer

- Health Checks

Resolution:

Identify network bottleneck and restore connectivity.

## Scenario 6 (5+ Years)

Database Exposed To Internet

Investigation:

- Public Subnet

- Security Group

- Route Table

Resolution:

Move to Private Subnet and restrict access.

## Scenario 7 (5+ Years)

Unexpected NAT Costs

Investigation:

- Data Transfer

- NAT Usage

- Architecture Review

Resolution:

Optimize traffic flow and reduce unnecessary NAT usage.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
