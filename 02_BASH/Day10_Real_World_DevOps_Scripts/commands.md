# Day 10 - Real World DevOps Scripts

## Script 1 - System Health Check

Create:

health_check.sh

Content:

#!/bin/bash

echo "===== SYSTEM HEALTH CHECK ====="

hostname

uptime

free -h

df -h

Screenshot:

01_health_check.png

## Script 2 - Disk Monitoring

Create:

disk_monitor.sh

Content:

#!/bin/bash

THRESHOLD=80

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]

then

echo "ALERT"

else

echo "OK"

fi

Screenshot:

02_disk_monitor.png

## Script 3 - Backup Script

Create:

backup.sh

Content:

#!/bin/bash

BACKUPDIR=backup

mkdir -p $BACKUPDIR

tar -czvf $BACKUPDIR/files.tar.gz *.txt

Screenshot:

03_backup_script.png

## Script 4 - Log Cleanup

Create:

cleanup.sh

Content:

#!/bin/bash

find . -name "*.log" -mtime +7 -delete

Screenshot:

04_log_cleanup.png

## Script 5 - Service Monitoring

Create:

service_check.sh

Content:

#!/bin/bash

systemctl is-active ssh

Screenshot:

05_service_monitor.png

## Script 6 - User Creation

Create:

user_create.sh

Content:

#!/bin/bash

USERNAME=$1

sudo useradd $USERNAME

Screenshot:

06_user_creation.png

## Script 7 - Deployment Validation

Create:

deploy_validate.sh

Content:

#!/bin/bash

if [ -f artifact.jar ]

then

echo "Ready"

else

echo "Missing Artifact"

fi

Screenshot:

07_deployment_validation.png

## Script 8 - Server Inventory Processing

Create:

inventory.sh

Content:

#!/bin/bash

while read SERVER

do

echo "Checking $SERVER"

done < servers.txt

Screenshot:

08_inventory_processing.png

## Script 9 - Error Logging

Create:

error_logging.sh

Content:

#!/bin/bash

ls /invalidpath 2>> error.log

Screenshot:

09_error_logging.png

## Script 10 - Combined DevOps Automation

Create:

devops_automation.sh

Modules:

- Health Check

- Disk Check

- Backup

- Logging

Screenshot:

10_devops_automation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
