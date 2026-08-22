i# Day 02 - Bash Variables, Input And Arguments

## Overview

This module covers Bash variables, environment variables, user input, command-line arguments, positional parameters, special variables, quoting, variable expansion, command substitution, and production-safe handling of input.

Variables make Bash scripts dynamic, reusable, and configurable.

Instead of hardcoding values throughout a script, a DevOps Engineer can store values such as application names, environments, paths, versions, ports, and server addresses in variables.

## Learning Objectives

By the end of this module, you should be able to:

- Create and use Bash variables

- Understand variable expansion

- Follow Bash variable naming rules

- Understand local and environment variables

- Read user input safely

- Pass command-line arguments

- Use positional parameters

- Use special Bash variables

- Understand single and double quotes

- Use command substitution

- Apply default values

- Mark variables as read-only

- Perform basic input validation

- Avoid exposing secrets through scripts

## Topics Covered

- Bash Variables

- Variable Naming Rules

- Variable Assignment

- Variable Expansion

- Local Variables

- Environment Variables

- Export Command

- Read Command

- Command-Line Arguments

- Positional Parameters

- Special Variables

- Quoting

- Command Substitution

- Default Values

- Read-Only Variables

- Production Security Considerations

## Special Variables Covered

- $0 = Script name

- $1 to $9 = Positional arguments

- $# = Number of arguments

- $@ = All arguments as separate values

- $* = All arguments as a combined value

- $? = Exit status of the previous command

- $$ = PID of the current shell

- $! = PID of the last background process

## DevOps Relevance

Variables are used in:

- Deployment scripts

- Jenkins pipelines

- Docker automation

- Kubernetes scripts

- AWS CLI automation

- Terraform wrapper scripts

- Backup scripts

- Monitoring scripts

- Service-management scripts

- Environment-specific configuration

## Real-World Examples

A deployment script may store:

- Application name

- Environment name

- Build version

- Deployment directory

- Service name

- Port number

- Artifact location

Example use case:

DEV environment deploys without approval.

PROD environment requires validation and approval.

## Files In This Module

- README.md

- concepts.md

- commands.md

- lab_notes.md

- interview_questions.md

- troubleshooting.md

- summary.md

- practise_session.md

- Day02_Variables_Lab_Screenshots/

## Expected Outcome

After completing this module, you should be able to build Bash scripts that accept input, process arguments, use dynamic values, and validate required configuration.
