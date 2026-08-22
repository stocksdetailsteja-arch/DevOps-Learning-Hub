# Day 09 - Error Handling Commands

## Example 1 - Exit Status

pwd

echo $?

Screenshot:

01_exit_status_success.png

## Example 2 - Failed Command

ls /invalidpath

echo $?

Screenshot:

02_exit_status_failure.png

## Example 3 - Success Validation

Create:

validate.sh

Content:

#!/bin/bash

mkdir testfolder

if [ $? -eq 0 ]

then

echo "Success"

else

echo "Failure"

fi

Screenshot:

03_success_validation.png

## Example 4 - Logging

Create:

logging.sh

Content:

#!/bin/bash

echo "Script Started" >> app.log

date >> app.log

Screenshot:

04_logging.png

## Example 5 - Redirect Errors

ls /invalidpath 2>> error.log

Screenshot:

05_error_redirect.png

## Example 6 - Redirect Output

ls > output.log

Screenshot:

06_output_redirect.png

## Example 7 - Redirect Both

ls /invalidpath > output.log 2>&1

Screenshot:

07_output_error_redirect.png

## Example 8 - Fail Fast

set -e

Screenshot:

08_fail_fast.png

## Example 9 - Retry Logic

Create:

retry.sh

Content:

#!/bin/bash

COUNT=0

while [ $COUNT -lt 3 ]

do

ping -c 1 google.com && break

COUNT=$((COUNT+1))

sleep 2

done

Screenshot:

09_retry_logic.png

## Example 10 - Trap Error

Create:

trap.sh

Content:

#!/bin/bash

trap 'echo Error Encountered' ERR

ls /invalidpath

Screenshot:

10_trap_handler.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
