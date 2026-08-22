# Day 02 - Bash Variables Practice Session

## Practice Directory

Create the practice directory from the repository root:

mkdir -p PRACTISE_SESSION/Day02_Bash_Variables_Lab

cd PRACTISE_SESSION/Day02_Bash_Variables_Lab

Verify:

pwd

## Lab 1 - Create Basic Variables

Create:

variables.sh

Add:

#!/bin/bash

NAME="Teja"

COURSE="DevOps With AWS"

LOCATION="India"

echo "Name: $NAME"

echo "Course: $COURSE"

echo "Location: $LOCATION"

Run:

chmod +x variables.sh

./variables.sh

Screenshot:

01_basic_variables.png

## Lab 2 - Accept User Input

Create:

input.sh

Add:

#!/bin/bash

read -r -p "Enter your full name: " FULL_NAME

read -r -p "Enter your technology: " TECHNOLOGY

echo "Name: $FULL_NAME"

echo "Technology: $TECHNOLOGY"

Screenshot:

02_user_input.png

## Lab 3 - Command-Line Arguments

Create:

arguments.sh

Add:

#!/bin/bash

echo "Environment: $1"

echo "Version: $2"

echo "Application: $3"

Run:

./arguments.sh DEV v1.0 inventory-service

Screenshot:

03_arguments.png

## Lab 4 - Special Variables

Create:

special.sh

Add:

#!/bin/bash

echo "Script name: $0"

echo "Argument count: $#"

echo "All arguments: $@"

echo "Shell PID: $$"

Run:

./special.sh DEV AWS Bash

Screenshot:

04_special_variables.png

## Lab 5 - Exit Status

Run:

pwd

echo "$?"

Run:

ls /invalid-path

echo "$?"

Screenshot:

05_exit_status.png

## Lab 6 - Command Substitution

Create:

system_info.sh

Add:

#!/bin/bash

HOST=$(hostname)

USER_NAME=$(whoami)

CURRENT_TIME=$(date)

UPTIME_VALUE=$(uptime -p)

echo "Host: $HOST"

echo "User: $USER_NAME"

echo "Time: $CURRENT_TIME"

echo "Uptime: $UPTIME_VALUE"

Screenshot:

06_command_substitution.png

## Lab 7 - Default Environment

Create:

environment.sh

Add:

#!/bin/bash

ENVIRONMENT=${1:-DEV}

echo "Selected environment: $ENVIRONMENT"

Run:

./environment.sh

./environment.sh QA

./environment.sh PROD

Screenshot:

07_default_environment.png

## Lab 8 - Required Input Validation

Create:

validate_arguments.sh

Add:

#!/bin/bash

if [ "$#" -ne 3 ]

then

echo "Usage: $0 ENVIRONMENT VERSION APPLICATION"

exit 1


fi

echo "Environment: $1"

echo "Version: $2"

echo "Application: $3"

Run with incomplete arguments.

Then run:

./validate_arguments.sh PROD v2.0 payment-service

Screenshot:

08_argument_validation.png

## Lab 9 - Environment Variable

Run:

export DEPLOY_PATH="/opt/apps"

printenv DEPLOY_PATH

bash -c 'echo "$DEPLOY_PATH"'

Screenshot:

09_export_environment.png

## Lab 10 - Argument With Spaces

Create:

quoting.sh

Add:

#!/bin/bash

echo "First argument: $1"

Run:

./quoting.sh "Production Application"

Then run without proper quoting:

./quoting.sh Production Application

Observe the difference.

Screenshot:

10_quoting_difference.png

## Lab 11 - Background PID

Create:

background.sh

Add:

#!/bin/bash

sleep 20 &

PROCESS_PID=$!

echo "Started process: $PROCESS_PID"

wait "$PROCESS_PID"

echo "Process completed."

Screenshot:

11_background_pid.png

## Lab 12 - Mini Deployment Configuration

Create:

deployment_config.sh

Add:

#!/bin/bash

ENVIRONMENT=${1:-DEV}

VERSION=${2:-latest}

APPLICATION=${3:-sample-app}

DEPLOY_PATH="/opt/$APPLICATION"

echo "Application: $APPLICATION"

echo "Environment: $ENVIRONMENT"

echo "Version: $VERSION"

echo "Deployment path: $DEPLOY_PATH"

Run:

./deployment_config.sh PROD v3.1 payment-service

Screenshot:

12_deployment_config.png

## Lab Validation Checklist

- Basic variables tested

- Variables containing spaces tested

- User input tested

- Command-line arguments tested

- Special variables tested

- Exit status tested

- Environment variables exported

- Command substitution tested

- Default values tested

- Required arguments validated

- Background PID captured

- Mini deployment configuration completed

## Cleanup

Review files:

ls -la

Remove only unnecessary temporary files.

Keep scripts that support your learning evidence.
