# Troubleshooting

## Scenario 1

Linux Server Slow

Check:

- CPU
- Memory
- Disk
- Load

Commands:

top

free -h

df -h

uptime

## Scenario 2

Application Not Accessible

Check:

- Process
- Service
- Port
- Firewall

Commands:

systemctl status

ss -tunlp

## Scenario 3

Disk Full

Check:

df -h

du -sh *

Find:

- Logs
- Dumps
- Large Files

## Scenario 4

Memory Leak

Check:

top

ps

pmap

Investigate:

- Java Processes
- Daemons

## Scenario 5

High CPU

Check:

top

pidstat

ps -ef

Analyze:

- Busy Process
- Infinite Loop
- Runaway Application

## Scenario 6

Bash Script Not Running

Check:

- Shebang
- Permissions
- Syntax

Commands:

chmod +x script.sh

bash -n script.sh

bash -x script.sh

## Scenario 7

Cron Job Not Running

Check:

systemctl status cron

crontab -l

grep CRON /var/log/syslog

## Production Incident Example

Issue:

Website Down

Investigation:

- Service Status
- Process
- Port
- Logs
- DNS
- Firewall

Root Cause:

Nginx service failed after configuration change.

Resolution:

Restore configuration and restart service.

Validation:

curl localhost
