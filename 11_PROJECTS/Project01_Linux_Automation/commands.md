# Project 01 - Commands

## Create Project Structure

mkdir -p Project01_Linux_Automation/{config,scripts,systemd,screenshots}

cd Project01_Linux_Automation

touch README.md architecture.md commands.md concepts.md

touch interview_questions.md lab_notes.md practise_session.md

touch rollback.md runbook.md summary.md troubleshooting.md

touch config/health-check.conf

touch scripts/health-check.sh scripts/install.sh

touch systemd/linux-health-check.service

touch systemd/linux-health-check.timer

## View Structure

tree

## Install Required Packages

sudo apt update

sudo apt install nginx git curl bc sysstat stress-ng tree -y

## Check Bash Version

bash --version

## Set Script Permissions

chmod 755 scripts/health-check.sh

chmod 755 scripts/install.sh

## Validate Bash Syntax

bash -n scripts/health-check.sh

bash -n scripts/install.sh

## Run With Trace Mode

bash -x scripts/health-check.sh

## Execute Manually

./scripts/health-check.sh

## Check Exit Code

echo $?

## Check CPU

top -bn1

## Check Memory

free -m

## Check Disk

df -P

## Check Load

uptime

cat /proc/loadavg

## Check CPU Core Count

nproc

## Check Nginx

systemctl is-active nginx

systemctl status nginx

## Check Ports

ss -lntup

## Check Network

ping -c 2 8.8.8.8

## View Health Log

sudo cat /var/log/linux-health-check/health-check.log

## Follow Health Log

sudo tail -f /var/log/linux-health-check/health-check.log

## Install Project

sudo ./scripts/install.sh

## Reload systemd

sudo systemctl daemon-reload

## Enable Timer

sudo systemctl enable --now linux-health-check.timer

## Check Timer

systemctl status linux-health-check.timer

systemctl list-timers linux-health-check.timer

## Run Service Manually

sudo systemctl start linux-health-check.service

## Check Service Result

systemctl status linux-health-check.service

## View Service Logs

journalctl -u linux-health-check.service

## View Recent Service Logs

journalctl -u linux-health-check.service -n 50 --no-pager

## Follow Service Logs

journalctl -u linux-health-check.service -f

## Simulate CPU Load

stress-ng --cpu 2 --timeout 60s

## Stop Nginx For Failure Test

sudo systemctl stop nginx

## Restore Nginx

sudo systemctl start nginx

## Disable Timer

sudo systemctl disable --now linux-health-check.timer

## Git Validation

git status

git diff --check

## Search For Possible Secrets

grep -RniE "password|secret|access.?key|private.?key|token" .

## Commit Project

git add Project01_Linux_Automation

git commit -m "Add Linux health check automation project"

git push origin main
