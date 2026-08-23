# Project 01 - Linux Automation

## Project Title

Production-Style Linux Server Health Check Automation

## Project Objective

Build a reusable Bash automation tool that monitors the health of a Linux server.

The tool checks:

- CPU utilization
- Memory utilization
- Disk utilization
- System load
- System uptime
- Service status
- Network connectivity
- Listening ports
- Recent service errors

The script produces timestamped logs and returns meaningful exit codes that can be consumed by:

- systemd
- Cron
- Jenkins
- Monitoring tools
- Operations scripts
- CI/CD pipelines

## Business Problem

Operations teams manage multiple Linux servers.

Manual health checking requires engineers to execute several commands on every server.

This approach creates problems:

- Repeated manual work
- Inconsistent validation
- Slow incident detection
- Missing evidence
- Human error
- Difficult troubleshooting

This project automates the health-checking workflow.

## Solution

The Bash script performs the following workflow:

- Load configuration
- Validate prerequisites
- Collect server information
- Check CPU
- Check memory
- Check disk
- Check load average
- Check service status
- Check network connectivity
- Write structured logs
- Return an exit status

## Technologies Used

- Ubuntu Linux
- Bash
- systemd
- systemd timer
- journalctl
- Nginx
- Git
- GitHub
- AWS EC2

## Project Architecture

Linux EC2 Instance

↓

systemd Timer

↓

Health Check Service

↓

Bash Health Check Script

↓

Operating System Metrics

↓

Threshold Evaluation

↓

Structured Log File

↓

Exit Code

↓

Operations Engineer Or Automation Pipeline

## Health Checks

### CPU Check

Checks estimated CPU utilization.

### Memory Check

Checks current memory utilization.

### Disk Check

Checks filesystem utilization.

### Load Check

Checks the one-minute load average.

### Service Check

Checks whether the configured service is active.

Default service:

- nginx

### Network Check

Checks whether the configured endpoint is reachable.

Default endpoint:

- 8.8.8.8

### Port Check

Checks whether configured service ports are listening.

## Status Levels

### OK

The check completed and the resource is healthy.

### WARNING

A configured warning threshold has been reached.

### CRITICAL

A critical threshold has been reached or a required service is unavailable.

### UNKNOWN

The check could not be completed reliably.

## Exit Codes

- 0 means all checks are healthy
- 1 means one or more warnings were found
- 2 means one or more critical failures were found
- 3 means the script could not complete a required validation

## Prerequisites

- Ubuntu EC2 instance or Linux virtual machine
- Bash
- sudo access
- systemd
- Git
- Nginx for service validation
- Network access for connectivity tests

## Installation Overview

- Clone or copy the project
- Review the configuration
- Make scripts executable
- Run syntax validation
- Execute the health check manually
- Install the systemd service
- Enable the systemd timer
- Review generated logs

## Security Considerations

- Do not run the script as root unless required
- Grant only required permissions
- Do not store credentials in the configuration file
- Protect log files from unauthorized modification
- Validate user-controlled configuration values
- Use absolute paths in scheduled automation
- Do not use unsafe temporary files
- Do not execute dynamically supplied commands
- Avoid exposing sensitive system information in public screenshots

## AWS Security Considerations

- Restrict SSH access in the Security Group
- Use an IAM role instead of access keys
- Do not store private keys in GitHub
- Remove public access when it is not required
- Terminate the EC2 instance after completing the project
- Delete unused EBS volumes and snapshots

## Project Validation

The project is successful when:

- Bash syntax validation passes
- Script executes without syntax errors
- Health report is generated
- CPU value is displayed
- Memory value is displayed
- Disk value is displayed
- Nginx status is displayed
- Network status is displayed
- Warning conditions return exit code 1
- Critical conditions return exit code 2
- systemd service executes the script
- systemd timer is scheduled
- Logs can be reviewed using journalctl
- Repeated executions work consistently

## Failure Scenarios

The project includes controlled validation for:

- Nginx service stopped
- Invalid service name
- Disk warning threshold lowered
- Network endpoint unavailable
- Configuration file missing
- Script permission removed
- Log directory unavailable
- systemd timer not enabled
- Required command unavailable

## Portfolio Evidence

Capture:

- Repository structure
- Script source
- Configuration file
- Syntax validation
- Successful health check
- Warning result
- Critical result
- Exit code
- systemd service
- systemd timer
- Journal logs
- Failure simulation
- Recovery validation
- Git commit

## Cleanup

After completing the project:

- Save all Markdown files
- Save screenshots locally
- Push the project to GitHub
- Stop the timer if no longer required
- Remove installed project files if appropriate
- Terminate unused EC2 instances
- Delete unused EBS volumes
- Review AWS billing

## Learning Outcomes

After completing this project, you should be able to:

- Write defensive Bash scripts
- Use functions and conditions
- Evaluate Linux metrics
- Work with exit codes
- Generate structured logs
- Schedule scripts using systemd
- Troubleshoot service failures
- Create operational runbooks
- Demonstrate Linux automation in interviews
