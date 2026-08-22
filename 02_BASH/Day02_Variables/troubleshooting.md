# Day 02 - Advanced Bash Variables Troubleshooting

## Scenario 1 - Command Not Found After Variable Assignment

### Error

NAME = "Teja"

Bash reports:

command not found

### Root Cause

Spaces were placed around the equals symbol.

### Resolution

Use:

NAME="Teja"

## Scenario 2 - Variable Does Not Print

### Incorrect

echo NAME

### Correct

echo "$NAME"

### Root Cause

The dollar symbol was omitted.

## Scenario 3 - Value With Spaces Is Split

### Symptoms

A path or application name becomes multiple arguments.

### Root Cause

The variable expansion was not quoted.

### Resolution

Use:

command "$VARIABLE"

## Scenario 4 - Single Quotes Prevent Expansion

### Symptoms

Output displays $NAME instead of the value.

### Root Cause

Single quotes were used.

### Resolution

Use double quotes when expansion is required.

## Scenario 5 - Exported Variable Not Available In Another Terminal

### Explanation

Exporting a variable affects the current shell and its child processes.

It does not automatically update unrelated existing terminal sessions.

### Resolution

Configure persistent non-sensitive variables in the appropriate shell or service configuration.

## Scenario 6 - Script Works Manually But Fails In Cron

### Possible Causes

- Different PATH

- Missing exported variables

- Different working directory

- Different user

- Missing credentials

- Relative paths

### Investigation

- Use absolute command paths

- Log the non-sensitive environment

- Confirm cron user

- Confirm working directory

- Review cron logs

### Permanent Resolution

Make the script independent of interactive-shell configuration.

## Scenario 7 - Jenkins Variable Is Empty

### Investigation

- Confirm pipeline-variable scope

- Confirm stage-level environment

- Confirm Jenkins runtime user

- Check credentials binding

- Check variable spelling and case

- Check shell used by the build step

### Prevention

Document required variables and validate them at script startup.

## Scenario 8 - Script Deploys With An Empty Application Name

### Impact

The deployment path may become incomplete or unsafe.

### Immediate Action

Stop execution before filesystem or deployment changes.

### Permanent Resolution

Require:

APP_NAME=${APP_NAME:?APP_NAME is required}

Also validate the value against an approved naming pattern.

## Scenario 9 - Secret Appears In Build Logs

### Causes

- Variable printed using echo

- Shell tracing enabled

- Full environment dumped

- Command-line argument exposed

### Immediate Response

Follow the approved secret-exposure procedure.

Rotate the credential if required.

Restrict or remove exposed logs according to policy.

### Prevention

- Use masked credentials

- Disable tracing around secret operations

- Never echo secrets

- Use approved secret stores

## Scenario 10 - $? Always Shows Zero

### Root Cause

Another successful command ran before the exit status was checked.

### Resolution

Capture the status immediately:

command

STATUS=$?

## Scenario 11 - Argument 10 Returns Unexpected Output

### Incorrect

echo "$10"

### Correct

echo "${10}"

### Root Cause

Braces are required to clearly identify positional parameters above 9.

## Scenario 12 - Production Environment Defaults To PROD

### Risk

Missing input may trigger an unintended production action.

### Safer Design

Use a non-production default or require an explicit environment.

Validate allowed values before execution.

## Scenario 13 - systemd Service Does Not See Shell Variables

### Root Cause

The service does not inherit the interactive shell environment.

### Investigation

- Inspect the unit configuration

- Inspect Environment and EnvironmentFile settings

- Confirm the service user

- Review service logs

### Resolution

Configure variables through approved service-management configuration.

## Scenario 14 - Input Causes Unexpected Command Execution

### Possible Root Cause

Unsafe use of eval, unquoted expansion, or constructed shell commands.

### Resolution

- Avoid eval

- Quote variables

- Validate input using an allowlist

- Pass values as arguments rather than building command strings

- Apply least privilege

## Scenario 15 - Environment Differs Across Servers

### Symptoms

The same script produces different results.

### Investigation

Compare:

- Bash version

- Runtime user

- Exported variables

- PATH

- Locale

- Shell options

- Configuration files

- Service environment

### Prevention

Define and validate the required runtime environment explicitly.
