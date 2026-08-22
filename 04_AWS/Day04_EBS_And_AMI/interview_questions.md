# Day 04 - Interview Questions

## Basic

### Q1 What Is EBS?

Persistent block storage for EC2 instances.

### Q2 What Is A Snapshot?

Backup of an EBS volume.

### Q3 What Is AMI?

Template used to launch EC2 instances.

## Intermediate

### Q1 Difference Between EBS And Instance Store?

EBS:

Persistent.

Instance Store:

Temporary storage.

### Q2 Why Create Snapshots?

Backup and recovery purposes.

### Q3 Why Create Custom AMIs?

Faster deployment and standardization.

## Advanced (5+ Years)

### Q1 Jenkins EC2 Server Failed. How Would You Recover?

Answer:

Launch From Latest AMI

Restore Snapshot

Attach Restored Volume

Validate Jenkins Data

Resume Service

### Q2 Difference Between Snapshot And AMI?

Snapshot:

Volume Backup

AMI:

Server Template

### Q3 How Would You Implement Backup Strategy?

Answer:

- Daily Snapshot

- Retention Policy

- Cross-Region Copy

- Validation Testing

### Q4 How Do You Reduce EBS Costs?

Answer:

- Remove Unused Volumes

- Remove Old Snapshots

- Right Size Storage

- Review Growth Patterns

### Q5 Explain Golden AMI Strategy.

Answer:

Create standardized image with:

- Security Updates

- Monitoring Agents

- Approved Tools

Use image across environments.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
