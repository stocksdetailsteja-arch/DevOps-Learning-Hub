# Day 07 - RDS Troubleshooting

## Scenario 1

Cannot Connect To Database

Cause:

Security Group

Resolution:

Allow required database port.

## Scenario 2

Database Performance Slow

Cause:

Resource bottleneck.

Resolution:

Review metrics and queries.

## Scenario 3

Snapshot Failed

Cause:

Permission or service issue.

Resolution:

Review events and permissions.

## Scenario 4

Read Replica Lag

Cause:

Heavy write operations.

Resolution:

Review workload and replication delay.

## Scenario 5 (5+ Years)

Production Database Unavailable

Investigation:

- RDS Events

- Multi-AZ Status

- Security Groups

- DNS Endpoint

Resolution:

Restore service and validate failover.

## Scenario 6 (5+ Years)

Accidental Table Deletion

Investigation:

- Backup Window

- Snapshots

- Recovery Objective

Resolution:

Use Point-In-Time Recovery.

## Scenario 7 (5+ Years)

Unexpected RDS Cost Increase

Investigation:

- Instance Class

- Storage Growth

- Read Replicas

- Backup Retention

Resolution:

Optimize sizing and storage.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
