# Day 02 - Bash Variables Commands And Examples

## Example 1 - Basic Variable

Create:

variables.sh

Content:

#!/bin/bash

NAME="Teja"

COURSE="DevOps With AWS"

echo "Name: $NAME"

echo "Course: $COURSE"

Run:

chmod +x variables.sh

./variables.sh

Screenshot:

01_basic_variables.png

## Example 2 - Variable With Spaces

Content:

#!/bin/bash

FULL_NAME="Akkana Tejaswar Sai"

echo "Full Name: $FULL_NAME"

Important:

Use quotes when a value contains spaces.

Screenshot:

02_variable_with_spaces.png

## Example 3 - Display Environment Variables

Commands:

echo "$HOME"

echo "$USER"

echo "$SHELL"

echo "$PATH"

printenv

Screenshot:

03_environment_variables.png

## Example 4 - Export Variable

Run:

APP_ENV="DEV"

export APP_ENV

printenv APP_ENV

Child-shell test:

bash -c 'echo "$APP_ENV"'

Screenshot:

04_export_variable.png

## Example 5 - Read User Input

Create:

input.sh

Content:

#!/bin/bash

read -r -p "Enter your name: " NAME

echo "Welcome $NAME"

Run:

chmod +x input.sh

./input.sh

Screenshot:

05_read_input.png

## Example 6 - Multiple Inputs

Content:

#!/bin/bash

read -r -p "Enter application name: " APP_NAME

read -r -p "Enter environment: " ENVIRONMENT

echo "Application: $APP_NAME"

echo "Environment: $ENVIRONMENT"

Screenshot:

06_multiple_inputs.png

## Example 7 - Silent Input

Content:

#!/bin/bash

read -r -s -p "Enter password: " PASSWORD

echo

echo "Password received securely from terminal input."

Do not print the password.

Screenshot:

07_silent_input.png

## Example 8 - Command-Line Arguments

Create:

arguments.sh

Content:

#!/bin/bash

echo "First argument: $1"

echo "Second argument: $2"

Run:

chmod +x arguments.sh

./arguments.sh DEV v1.0

Screenshot:

08_command_arguments.png

## Example 9 - Special Variables

Create:

special_variables.sh

Content:

#!/bin/bash

echo "Script name: $0"

echo "Argument count: $#"

echo "All arguments: $@"

echo "Current shell PID: $$"

Run:

./special_variables.sh Teja AWS Bash

Screenshot:

09_special_variables.png

## Example 10 - Previous Exit Status

Run:

ls /tmp

echo "$?"

Then run an invalid command:

ls /does-not-exist

echo "$?"

Screenshot:

10_exit_status.png

Important:

Read $? immediately because the next command replaces the previous status.

## Example 11 - Background Process PID

Create:

background_pid.sh

Content:

#!/bin/bash

sleep 60 &

BACKGROUND_PID=$!

echo "Background process PID: $BACKGROUND_PID"

wait "$BACKGROUND_PID"

echo "Background process completed."

Screenshot:

11_background_pid.png

## Example 12 - Command Substitution

Create:

system_variables.sh

Content:

#!/bin/bash

CURRENT_DATE=$(date)

SYSTEM_HOST=$(hostname)

CURRENT_USER=$(whoami)

echo "Date: $CURRENT_DATE"

echo "Host: $SYSTEM_HOST"

echo "User: $CURRENT_USER"

Screenshot:

12_command_substitution.png

## Example 13 - Default Value

Create:

default_value.sh

Content:

#!/bin/bash

ENVIRONMENT=${1:-DEV}

echo "Deployment environment: $ENVIRONMENT"

Run without an argument:

./default_value.sh

Run with an argument:

./default_value.sh PROD

Screenshot:

13_default_value.png

## Example 14 - Required Variable

Create:

required_variable.sh

Content:

#!/bin/bash

APP_NAME=${APP_NAME:?APP_NAME environment variable is required}

echo "Application: $APP_NAME"

Test without setting APP_NAME.

Then run:

export APP_NAME="inventory-service"

./required_variable.sh

Screenshot:

14_required_variable.png

## Example 15 - Read-Only Variable

Create:

readonly_variable.sh

Content:

#!/bin/bash

readonly PLATFORM="DevOps-Learning-Hub"

echo "$PLATFORM"

PLATFORM="Changed"

Expected:

Bash reports that the variable is read-only.

Screenshot:

15_readonly_variable.png

## Example 16 - unset Variable

Run:

TEMP_VALUE="temporary"

echo "$TEMP_VALUE"

unset TEMP_VALUE

echo "$TEMP_VALUE"

Screenshot:

16_unset_variable.png

## Example 17 - Safely Process All Arguments

Create:

all_arguments.sh

Content:

#!/bin/bash

for ARGUMENT in "$@"

do

echo "Argument: $ARGUMENT"


done

Run:

./all_arguments.sh "DEV Environment" "Version 1.0" "Payment Service"

Screenshot:

17_all_arguments.png

## Command Summary

- echo "$VARIABLE" = Display value

- export VARIABLE=value = Export environment variable

- printenv VARIABLE = Display exported variable

- read -r VARIABLE = Read input safely

- $1 = First argument

- $# = Argument count

- "$@" = All separate arguments

- $? = Previous exit status

- $$ = Current shell PID

- $! = Last background PID

- $(command) = Command substitution

- ${VAR:-default} = Use default value

- readonly VAR=value = Prevent reassignment

- unset VAR = Remove variable
