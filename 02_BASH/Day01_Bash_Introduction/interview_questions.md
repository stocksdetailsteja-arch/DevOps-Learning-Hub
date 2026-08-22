# Day 01 - Bash Interview Questions

## Basic

### Q1 What is Bash?

Bash is a command-line shell and scripting language used in Linux systems.

### Q2 What is Shell?

Shell is an interface between user and operating system.

### Q3 What is a Bash Script?

A Bash Script is a file containing Linux commands executed sequentially.

## Intermediate

### Q1 Why is shebang required?

Answer:

It defines which interpreter should execute the script.

Example:

#!/bin/bash

### Q2 Difference between:

./script.sh

and

bash script.sh

Answer:

./script.sh

Requires execute permission.

bash script.sh

Does not require execute permission.

## Advanced (5+ Years)

### Q1 Why is Bash important in DevOps?

Answer:

Bash enables:

- Automation

- Monitoring

- Deployment

- Infrastructure Management

- CI/CD Operations

### Q2 A Bash script works manually but fails in Cron. Why?

Answer:

Possible reasons:

- PATH differences

- Environment variables missing

- Permission issues

- Wrong interpreter path

Production troubleshooting should compare:

Manual Execution

vs

Cron Execution

### Q3 A Jenkins Job Executes Script Successfully On One Server But Not Another. Investigation Steps?

Answer:

Verify Bash version.

Verify permissions.

Verify environment variables.

Verify shell availability.

Verify dependencies.

Compare script execution context.
