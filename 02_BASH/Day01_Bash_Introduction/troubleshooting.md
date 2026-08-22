# Day 01 - Bash Troubleshooting

## Scenario 1

Permission Denied

Error:

Permission denied

Cause:

Script not executable.

Resolution:

chmod +x script.sh

## Scenario 2

Bad Interpreter

Error:

bad interpreter

Cause:

Wrong shebang path.

Resolution:

Use:

#!/bin/bash

## Scenario 3

Command Not Found

Cause:

Missing package or PATH issue.

Resolution:

Verify:

which command_name

## Scenario 4

Script Works Manually But Not In Cron

Cause:

Different environment.

Investigation:

- PATH

- Variables

- Permissions

- Cron Logs

Resolution:

Use full paths.

## Scenario 5 (5+ Years)

Production Automation Failed Overnight

Investigation:

Script Logs

Cron Logs

System Logs

Environment Variables

Network Connectivity

File Permissions

Resolution:

Fix root cause and validate rerun.
