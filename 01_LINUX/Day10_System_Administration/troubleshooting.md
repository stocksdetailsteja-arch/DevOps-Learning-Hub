# Day 10 Troubleshooting

## Scenario 1 - CPU 100 Percent

Symptoms:

Server becomes slow.

Investigation:

- top

- ps -eo pid,cmd,%cpu --sort=-%cpu

Root Cause:

Application consuming CPU.

Resolution:

Investigate process and optimize.

## Scenario 2 - Memory Exhaustion

Symptoms:

Out Of Memory.

Investigation:

- free -h

- top

- vmstat

Resolution:

Identify memory leak.

Optimize application.

## Scenario 3 - Disk Full

Symptoms:

Deployments fail.

Investigation:

- df -h

- du -sh

Resolution:

Cleanup files.

Implement retention policy.

## Scenario 4 - Service Not Starting

Investigation:

systemctl status service

journalctl -u service

Root Cause:

Bad configuration.

Resolution:

Correct configuration.

Restart service.

## Scenario 5 - Cron Job Not Running

Investigation:

- crontab -l

- systemctl status cron

- logs

Resolution:

Fix schedule or permissions.

## Scenario 6 - Production Outage (5+ Years)

Symptoms:

Application unavailable.

Investigation:

Service status

Logs

CPU

Memory

Disk

Network

Recent changes

Root Cause Analysis

Recovery

Validation

Prevention
