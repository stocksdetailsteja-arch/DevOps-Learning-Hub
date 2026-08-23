# Bash Troubleshooting Cheatsheet

## Script Not Running

Check:

chmod +x script.sh

bash script.sh

## Permission Denied

Check:

ls -l script.sh

chmod +x script.sh

## Syntax Error

Check:

bash -n script.sh

## Debug Script

Check:

bash -x script.sh

## Variable Not Expanding

Check:

echo $variable

Verify spelling.

## Loop Not Working

Check:

do

done

blocks.

## Conditional Failure

Check:

if

then

fi

syntax.

## Cron Job Not Running

Check:

systemctl status cron

crontab -l

grep CRON /var/log/syslog

## Script Running Manually But Not In Cron

Check:

- PATH variable
- Permissions
- Absolute paths

## Output Missing

Redirect output:

script.sh > output.log 2>&1

## Script Hanging

Check:

- Infinite loops
- Waiting for input
- Background processes

## Production Script Checklist

- Error Handling
- Logging
- Validation
- Exit Codes
- Retry Logic
- Notifications

## High CPU Due To Script

Check:

top

ps -ef

Review loop conditions.

## Secret Exposed In Script

Fix
