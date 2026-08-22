# Day 02 - Bash Variables Lab Notes

## Lab Objective

Learn how to create variables, accept user input, process command-line arguments, use environment variables, validate input, and generate dynamic configuration.

## Practice Directory

PRACTISE_SESSION/Day02_Bash_Variables_Lab

## Scripts Created

- variables.sh

- input.sh

- arguments.sh

- special.sh

- system_info.sh

- environment.sh

- validate_arguments.sh

- quoting.sh

- background.sh

- deployment_config.sh

## Commands Used

- echo

- read

- export

- printenv

- unset

- readonly

- hostname

- whoami

- date

- uptime

## Observations

- Variable assignment cannot contain spaces around =.

- Double quotes expand variables.

- Single quotes preserve literal content.

- "$@" preserves argument boundaries.

- $? must be captured immediately.

- Exported variables are available to child processes.

- Command substitution makes scripts dynamic.

- Default values reduce unnecessary failures.

- Required-variable checks prevent unsafe execution.

## Results

Successfully:

- Created Bash variables

- Accepted user input

- Passed command-line arguments

- Used special variables

- Exported environment variables

- Used command substitution

- Applied default values

- Validated required input

- Captured background PIDs

- Built a deployment-configuration script

## Lessons Learned

- Always quote variable expansions.

- Never hardcode secrets.

- Validate script arguments before performing changes.

- Use meaningful variable names.

- Avoid displaying sensitive values.

- Use environment-specific configuration carefully.

- Scripts should fail early when required input is missing.

## Screenshot Location

Day02_Variables_Lab_Screenshots/
