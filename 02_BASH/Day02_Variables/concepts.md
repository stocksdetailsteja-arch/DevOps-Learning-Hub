i# Day 02 - Bash Variables Concepts

## What Is A Variable?

A variable is a named location used to store a value.

Examples of values include:

- Username

- Application name

- Environment

- Server address

- Port number

- File path

- Software version

Example:

NAME="Teja"

The variable name is:

NAME

The stored value is:

Teja

## Why Are Variables Important?

Without variables, values must be repeated throughout a script.

With variables, a value is defined once and reused.

Benefits include:

- Reusability

- Easier maintenance

- Reduced duplication

- Environment-specific configuration

- Clearer scripts

- Easier automation

## Variable Assignment

Bash variable assignment must not contain spaces around the equals symbol.

Correct:

NAME="Teja"

Incorrect:

NAME = "Teja"

The incorrect version makes Bash interpret NAME as a command.

## Accessing A Variable

Use the dollar symbol to access a variable value.

Example:

NAME="Teja"

echo "$NAME"

Bash replaces $NAME with the stored value before executing the command.

This is called variable expansion.

## Variable Naming Rules

Recommended variable names:

- Use letters

- Use numbers after the first character

- Use underscores

- Use uppercase for configuration-style variables

Valid examples:

APP_NAME="payment-service"

APP_PORT="8080"

DEPLOY_ENV="DEV"

Invalid examples:

2APP="test"

APP-NAME="test"

APP NAME="test"

## Quoting Variables

Quoting is critical in Bash.

Double Quotes

Double quotes allow variable expansion.

Example:

NAME="Teja"

echo "Welcome $NAME"

Output:

Welcome Teja

Single Quotes

Single quotes prevent variable expansion.

Example:

NAME="Teja"

echo 'Welcome $NAME'

Output:

Welcome $NAME

No Quotes

Unquoted variables can cause word splitting and wildcard expansion.

Production scripts should normally quote variable references.

Preferred:

echo "$NAME"

Avoid:

echo $NAME

especially when the value may contain spaces or special characters.

## Local Variables

A local shell variable exists in the current shell.

Example:

COURSE="DevOps"

A child process does not automatically receive an unexported shell variable.

## Environment Variables

Environment variables are exported to child processes.

Example:

export APP_ENV="PROD"

Verify:

printenv APP_ENV

Common environment variables include:

- PATH

- HOME

- USER

- SHELL

- PWD

- LANG

## The export Command

The export command makes a variable available to child processes.

Example:

APP_NAME="inventory-service"

export APP_NAME

A shorter form is:

export APP_NAME="inventory-service"

## User Input With read

The read command accepts input from the terminal.

Example:

read NAME

A clearer prompt can be displayed using:

read -p "Enter your name: " NAME

Options include:

- -p = Display prompt

- -s = Silent input

- -r = Prevent backslash interpretation

- -t = Apply timeout

Production-safe input commonly uses read -r.

## Silent Input

Sensitive input can be hidden using:

read -s -p "Enter password: " PASSWORD

Important:

Hiding terminal input does not make storing the password in a variable fully secure.

Secrets should be handled through approved secret-management mechanisms.

## Command-Line Arguments

Arguments are values passed when executing a script.

Example:

./deploy.sh DEV v1.2.0

Inside the script:

- $1 = DEV

- $2 = v1.2.0

Arguments allow a script to run without interactive prompts.

This is useful for automation and CI/CD.

## Positional Parameters

Bash stores arguments using positional parameters.

- $0 = Script name

- $1 = First argument

- $2 = Second argument

- ${10} = Tenth argument

Arguments above 9 should use braces.

Correct:

${10}

Incorrect:

$10

Without braces, Bash may interpret $10 as $1 followed by 0.

## Special Variables

$#

Number of arguments.

$@

All arguments, preserving separate arguments when quoted.

Preferred iteration:

for ARG in "$@"

$*

All arguments combined.

When quoted, "$*" usually produces one combined string.

$?

Exit status of the previous command.

Zero usually indicates success.

A non-zero value usually indicates failure.

$$

PID of the current shell.

$!

PID of the most recently started background process.

## Difference Between $@ And $*

When quoted:

"$@" preserves individual arguments.

"$*" joins arguments into one value.

For safely processing all script arguments, "$@" is generally preferred.

## Command Substitution

Command substitution stores command output in a variable.

Preferred syntax:

CURRENT_DATE=$(date)

Example:

HOSTNAME=$(hostname)

DISK_USAGE=$(df -h /)

Older backtick syntax exists, but $() is clearer and supports nesting more safely.

## Default Values

Bash parameter expansion can provide defaults.

Example:

ENVIRONMENT=${1:-DEV}

Meaning:

- Use $1 when supplied

- Otherwise use DEV

This is useful for scripts with optional parameters.

## Required Variables

A script can stop when a required variable is missing.

Example:

APP_NAME=${APP_NAME:?APP_NAME is required}

This prevents a script from continuing with incomplete configuration.

## Read-Only Variables

A variable can be marked read-only.

Example:

readonly COMPANY="Example"

The value cannot be reassigned in the same shell after being marked read-only.

## unset Command

The unset command removes a shell variable.

Example:

unset TEMP_VALUE

## Production Security Considerations

Do not place secrets directly in:

- Source code

- Git repositories

- Command-line arguments

- Process listings

- Shell history

Command-line arguments may be visible through process inspection.

Prefer:

- Approved secret managers

- Protected environment injection

- Restricted files

- Short-lived credentials

- Least-privilege access

## Real-World Deployment Example

A deployment script may receive:

- Environment

- Application version

- Service name

- Deployment directory

Example execution:

./deploy.sh PROD v2.1.0 payment-service

The script can validate these values before deployment.

## Production Best Practices

- Quote variable expansions

- Validate required variables

- Use meaningful names

- Avoid hardcoded secrets

- Use default values carefully

- Use "$@" for argument forwarding

- Log non-sensitive configuration values

- Never log passwords, tokens, or private keys

- Fail early when mandatory input is missing
