# Day 02 - Bash Variables Interview Questions And Answers

## Basic Questions

### Q1. What Is A Bash Variable?

A Bash variable is a named value stored in the current shell environment.

### Q2. How Do You Assign A Variable?

Example:

NAME="Teja"

Spaces must not be placed around the equals symbol.

### Q3. How Do You Access A Variable?

Use the dollar symbol.

Example:

echo "$NAME"

### Q4. What Does The read Command Do?

The read command accepts input from standard input and stores the value in one or more variables.

### Q5. What Is An Environment Variable?

An environment variable is an exported variable available to child processes.

## Intermediate Questions

### Q1. What Is The Difference Between Single And Double Quotes?

Double quotes allow variable and command expansion.

Single quotes preserve text literally and prevent variable expansion.

### Q2. What Is The Difference Between $@ And $*?

When quoted, "$@" preserves individual arguments.

When quoted, "$*" combines arguments into a single value.

"$@" is generally preferred for safely forwarding arguments.

### Q3. What Does $? Represent?

It contains the exit status of the previously executed command.

Zero generally indicates success.

Non-zero generally indicates failure.

### Q4. What Does $$ Represent?

It is the PID of the current shell.

### Q5. What Does $! Represent?

It is the PID of the most recently started background process.

### Q6. What Is Command Substitution?

Command substitution captures command output.

Example:

CURRENT_DATE=$(date)

### Q7. How Do You Assign A Default Value?

Example:

ENVIRONMENT=${1:-DEV}

DEV is used when $1 is missing or empty.

## Advanced Questions For 5+ Years Experience

### Q1. Why Should Variable Expansions Usually Be Quoted?

Unquoted expansions can undergo word splitting and filename expansion.

This may cause:

- Incorrect argument counts

- Broken file paths

- Unexpected wildcard matching

- Unsafe script behavior

Preferred:

command "$VARIABLE"

### Q2. Why Should Secrets Not Be Passed As Command-Line Arguments?

Command-line arguments may be visible through:

- Process listings

- Monitoring tools

- Audit records

- Shell history

Use approved secret-management mechanisms rather than plain command-line secrets.

### Q3. A Script Reads A Variable Correctly In An Interactive Shell But Not In Jenkins. Why?

Possible causes include:

- Variable was not exported

- Jenkins runs under another user

- Jenkins has a different environment

- Jenkins sanitizes or overrides variables

- Variable is configured only in an interactive profile

- Pipeline stage does not receive the expected environment block

Investigation should compare the runtime user and environment without printing secrets.

### Q4. Why Can $? Show An Unexpected Value?

$? contains only the status of the immediately previous command.

If another command runs before $? is captured, the original status is lost.

Correct pattern:

command

STATUS=$?

### Q5. How Do You Forward All Arguments To Another Command Safely?

Use:

other_command "$@"

This preserves individual argument boundaries.

### Q6. How Do You Validate Mandatory Deployment Inputs?

Validate:

- Argument count

- Empty values

- Allowed environment names

- Version format

- Application-name format

- File or directory existence

- Authorization requirements

Fail before making changes when validation fails.

### Q7. What Is Variable Precedence In A Deployment Script?

A script may receive configuration from:

- Hardcoded defaults

- Configuration files

- Environment variables

- Command-line arguments

A clear precedence model must be documented to avoid unexpected deployments.

One suggested policy is:

Command-line arguments

Environment variables

Configuration files

Safe defaults

This is a design choice and should be explicit.

### Q8. Why Can An Exported Variable Still Be Missing In A Service?

Services managed by systemd do not necessarily inherit variables from a user's interactive shell.

Variables may need to be configured through:

- The systemd unit

- An Environment directive

- An EnvironmentFile

- An approved secret-injection mechanism

The service must be reloaded or restarted according to the change procedure.

### Q9. Why Is eval Dangerous With User-Controlled Variables?

eval interprets generated text as shell code.

Untrusted input can lead to command injection.

Avoid eval unless the input is strictly controlled and no safer alternative exists.

### Q10. How Do You Prevent Environment Variables From Leaking Into Logs?

- Do not enable unrestricted shell tracing around secrets

- Mask sensitive CI/CD variables

- Avoid printing the full environment

- Redact sensitive values

- Limit diagnostic output

- Use approved secret stores

- Review logs before sharing them

### Q11. A Production Script Deployed To The Wrong Environment. What Design Improvements Are Needed?

- Strictly validate environment names

- Require explicit production selection

- Remove unsafe production defaults

- Display a non-sensitive execution summary

- Require approval through the delivery process

- Add environment-specific credentials and access boundaries

- Add dry-run support

- Log the deployment target and artifact version

- Implement rollback

### Q12. How Would You Explain Local, Exported, And Process-Specific Variables?

A shell variable exists in the current shell.

An exported variable is inherited by child processes.

A process can also receive variables only for one command.

Example concept:

VARIABLE=value command

This limits the variable to that command invocation and its children.
