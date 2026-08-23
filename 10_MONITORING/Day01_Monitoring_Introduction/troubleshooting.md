# Day 01 - Troubleshooting

## Issue 1

High CPU Usage

Cause:

- Infinite Loop
- Heavy Application Load

Investigation:

top

Solution:

Identify and stop offending process.

## Issue 2

High Memory Usage

Cause:

Memory Leak

Investigation:

free -h

Solution:

Restart service and analyze application.

## Issue 3

Disk Full

Cause:

Large log files.

Investigation:

df -h

Solution:

Archive and clean logs.

## Issue 4

Server Slow

Cause:

CPU or Memory Saturation.

Solution:

Check resource utilization.

## Issue 5

Service Unavailable

Cause:

Application Crash.

Investigation:

journalctl

Solution:

Restart service and analyze logs.

## Production Scenario 1

Application unavailable but server healthy.

Root Cause:

Application process crashed.

## Production Scenario 2

CPU spikes every night.

Root Cause:

Scheduled batch jobs.

## Production Scenario 3

Storage suddenly exhausted.

Root Cause:

Uncontrolled log growth.
