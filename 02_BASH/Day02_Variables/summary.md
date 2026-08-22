# Day 02 - Bash Variables Summary

## Topics Covered

- Variable assignment

- Variable expansion

- Variable naming

- Quoting

- User input

- Environment variables

- Export

- Command-line arguments

- Positional parameters

- Special variables

- Command substitution

- Default values

- Required variables

- Read-only variables

- Secret-handling considerations

## Important Syntax

- NAME="Teja" = Assign value

- "$NAME" = Expand value safely

- export NAME = Export variable

- read -r NAME = Read user input

- $1 = First argument

- $# = Argument count

- "$@" = All separate arguments

- $? = Previous exit status

- $$ = Current shell PID

- $! = Last background PID

- $(command) = Command substitution

- ${VAR:-default} = Default value

- ${VAR:?message} = Require value

- readonly VAR=value = Read-only variable

- unset VAR = Remove variable

## Quoting Summary

Double quotes:

- Allow variable expansion

- Protect spaces

Single quotes:

- Prevent expansion

Unquoted variables:

- May undergo word splitting

- May undergo wildcard expansion

## Production Notes

- Quote variables

- Validate required input

- Avoid unsafe defaults

- Never hardcode secrets

- Avoid secrets in command-line arguments

- Capture exit status immediately

- Use "$@" when forwarding arguments

- Avoid eval with untrusted input

- Document configuration precedence

## Interview Quick Notes

A variable stores a value.

An environment variable is inherited by child processes after export.

"$@" preserves separate arguments.

$? contains the immediately previous command's exit status.

Command substitution captures output.

Default values improve script flexibility but must not create unsafe production behavior.

## Key Takeaways

- Variables make scripts dynamic.

- Quoting prevents many Bash bugs.

- Input must be validated.

- Environment variables behave differently across shells, cron, Jenkins, and systemd.

- Secrets require secure handling.

- Production scripts should fail early and clearly.
