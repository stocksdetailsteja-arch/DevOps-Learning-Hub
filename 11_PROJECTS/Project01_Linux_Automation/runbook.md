# Project 01 - Operational Runbook

## Service Name

Linux Health Check Automation

## Purpose

Monitor basic Linux server and Nginx health.

## Dependencies

- Bash
- systemd
- Nginx
- df
- free
- top
- ping
- ss
- systemctl

## Health Check Command

sudo systemctl start linux-health-check.service

## Timer Status

systemctl status linux-health-check.timer

systemctl list-timers linux-health-check.timer

## Application Status

systemctl status linux-health-check.service

## Log Locations

File log:

/var/log/linux-health-check/health-check.log

Journal:

journalctl -u linux-health-check.service

## Configuration Location

/etc/linux-health-check/health-check.conf

## Script Location

/opt/linux-health-check/health-check.sh

## Standard Investigation Sequence

### Step 1 - Review Overall Status

systemctl status linux-health-check.service

### Step 2 - Review Recent Logs

journalctl -u linux-health-check.service -n 100 --no-pager

### Step 3 - Check Nginx

systemctl status nginx

journalctl -u nginx -n 100 --no-pager

### Step 4 - Check Resources

top

free -h

df -h

uptime

### Step 5 - Check Network

ip addr

ip route

ping -c 2 8.8.8.8

ss -lntup

### Step 6 - Validate Configuration

sudo cat /etc/linux-health-check/health-check.conf

### Step 7 - Run Script Directly

sudo CONFIG_FILE=/etc/linux-health-check/health-check.conf \
    /opt/linux-health-check/health-check.sh

## CPU Alert Response

- Identify high CPU processes
- Check recent deployments
- Review application logs
- Check system load
- Determine whether load is expected
- Stop only a confirmed problematic process
- Re-run health validation

## Memory Alert Response

- Review available memory
- Identify high-memory processes
- Review swap usage
- Inspect application logs
- Avoid restarting services without impact assessment
- Validate memory after remediation

## Disk Alert Response

- Identify affected filesystem
- Locate large directories
- Review logs
- Check deleted open files
- Clean only verified safe data
- Validate free space
- Confirm affected services recover

## Service Critical Response

- Check service state
- Review service logs
- Validate configuration
- Check port conflict
- Start or restart service only after investigation
- Verify endpoint response

## Escalation Evidence

Provide:

- Hostname
- Timestamp
- Affected component
- Health-check output
- Exit code
- Resource snapshots
- Service status
- Relevant logs
- Recent change information
- Actions already completed

## Recovery Validation

- Script executes
- Required service is active
- Required port is listening
- Application endpoint responds
- Exit status is acceptable
- Timer is active
- Logs show recovery
