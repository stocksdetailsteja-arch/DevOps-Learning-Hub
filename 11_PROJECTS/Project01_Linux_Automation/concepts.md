# Project 01 - Concepts

## Defensive Bash Scripting

Defensive scripting assumes that operations can fail.

Important practices:

- Validate required files
- Validate required commands
- Quote variable expansions
- Use local variables inside functions
- Return explicit status codes
- Avoid silent failures
- Log meaningful error messages
- Use safe defaults
- Do not trust uncontrolled input

## Exit Status

Every Linux command returns an exit status.

- 0 normally indicates success
- Non-zero normally indicates failure

This project uses:

- 0 for healthy
- 1 for warning
- 2 for critical
- 3 for unknown or execution failure

## Threshold Monitoring

A threshold defines when a metric changes status.

Example:

- Disk below 80% is OK
- Disk from 80% is WARNING
- Disk from 90% is CRITICAL

Thresholds must be tuned according to:

- Workload
- Resource size
- Growth rate
- Business impact
- Recovery time

## CPU Utilization

CPU utilization measures processor usage.

A high value may be caused by:

- Heavy workload
- Infinite loop
- Batch processing
- Compression
- Build process
- Java garbage collection
- Runaway process

CPU should not be investigated in isolation.

Also review:

- Load average
- Process list
- Memory pressure
- Disk I/O
- Application logs

## Memory Utilization

Memory utilization shows how much memory is in use.

Linux uses memory for:

- Processes
- Kernel
- Buffers
- Cache

Available memory is more useful than only reading the free column.

## Disk Utilization

Disk checks identify filesystems approaching capacity.

A full filesystem may cause:

- Application failure
- Database failure
- Log write failure
- Package installation failure
- SSH problems
- Service startup failure

## Load Average

Load average represents work that is running or waiting.

Interpretation depends on:

- CPU core count
- Workload
- I/O waits
- Observation period

A load of four has different meaning on:

- A two-core server
- An eight-core server

## Process And Service Monitoring

A process is a running program.

A service is commonly a long-running background process managed by systemd.

Useful commands:

- ps
- top
- systemctl
- journalctl

## Idempotency

An installation process is idempotent when repeated execution does not produce unintended changes.

The installation script should safely:

- Recreate required directories
- Replace managed files
- Preserve expected permissions
- Reload systemd
- Avoid duplicate configuration

## Structured Logging

Structured log messages should include:

- Timestamp
- Severity
- Component
- Message

Example:

2026-08-23T20:00:00+05:30 | WARNING | DISK | Root filesystem usage is 82%

## Scheduling

This project uses a systemd timer.

A timer unit activates a matching service unit by default when the configured timer condition is reached. 【3-f724b2】

## Journal Logging

journalctl prints entries stored in the systemd journal and supports filtering through match expressions and unit-related options. 【4-66d78b】【5-d0426f】

## Least Privilege

The script should receive only the permissions required to:

- Read system metrics
- Check service state
- Write its log
- Run scheduled checks

## Observability

The project produces operational signals through:

- Health results
- Exit codes
- Log files
- systemd status
- systemd journal entries
