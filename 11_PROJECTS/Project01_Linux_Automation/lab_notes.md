# Project 01 - Lab Notes

## Environment

Cloud Provider:

AWS

Operating System:

Ubuntu

Project:

Linux Health Check Automation

## Server Details

Document:

- Instance identifier
- Instance type
- Availability Zone
- Operating system
- Kernel version
- CPU core count
- Total memory
- Root filesystem size

Do not document private SSH keys or credentials.

## Components Installed

- Bash
- Nginx
- Git
- curl
- stress-ng
- systemd units

## Health Checks Completed

- CPU
- Memory
- Disk
- Load average
- Nginx state
- Network reachability
- Port 80 state

## Successful Validation

Document:

- Script syntax result
- Manual execution result
- systemd execution result
- Timer schedule
- Log location
- Healthy exit code

## Failure Validation

Document:

- Failure introduced
- Expected impact
- Actual result
- Exit code
- Log evidence
- Recovery command
- Recovery validation

## Example Incident Record

### Incident

Nginx health check failed.

### Detection

The service and port checks returned CRITICAL.

### Investigation

Commands used:

systemctl status nginx

journalctl -u nginx -n 50 --no-pager

ss -lntp

### Root Cause

Document the actual lab root cause.

### Resolution

Document the command used to restore the service.

### Validation

Confirm:

- Nginx active
- Port 80 listening
- curl succeeds
- Health script no longer reports the service failure

## Key Learnings

- Functions make Bash automation maintainable.
- Exit codes allow integration with other tools.
- Thresholds must be configurable.
- A scheduled script needs absolute paths.
- Logs are required for troubleshooting.
- Failure recovery must be validated.
- GitHub documentation is part of the engineering deliverable.

## AWS Cleanup Status

- [ ] Files pushed to GitHub
- [ ] Screenshots saved
- [ ] EC2 instance terminated or intentionally retained
- [ ] Unused EBS volumes deleted
- [ ] AWS Billing reviewed
