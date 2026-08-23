# Rollback Plan

## Rollback Trigger

Infrastructure change causes outage.

## Recovery

- Restore Security Group
- Restore Route Table
- Revert Infrastructure Code
- Restore Database Snapshot if required

## Validation

- ALB reachable
- EC2 healthy
- RDS healthy
- Metrics normal
