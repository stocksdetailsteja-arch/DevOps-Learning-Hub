# Project 01 - Practice S*ssion

## Lab 1 - Prepare The EC2 *nvironment

- Launch or reuse an U*untu EC2 instance
- Restrict SSH a*cess
- Connect using SSH or PuTTY
* Verify the operating system
- Ver*fy current user
- Verify disk spac*

Commands:

cat /etc/os-release

*hoami

hostname

df -h

## Lab 2 -*Create Project Structure

Create a*l directories and files.

Validate*using:

tree Project01_Linux_Autom*tion

Capture:

- 01_project_struc*ure.png

## Lab 3 - Install Requir*ments

Install:

- Nginx
- Git
- c*rl
- bc
- sysstat
- stress-ng
- tr*e

Verify Nginx:

systemctl status*nginx

curl localhost

Capture:

-*02_script_permissions.png
- 06_ngi*x_running.png

## Lab 4 - Add Conf*guration And Scripts

Create:

- h*alth-check.conf
- health-check.sh
* install.sh

Set permissions:

chm*d 755 scripts/health-check.sh

chm*d 755 scripts/install.sh

## Lab 5*- Validate Syntax

Run:

bash -n scripts/health-check.sh

bash -n scripts/install.sh

Expected result:

- No syntax errors
- Exit code 0

Capture:

- 03_syntax_validation.png

## Lab 6 - Test Manually

Use the local project configuration:

CONFIG_FILE="$PWD/config/health-check.conf" ./scripts/health-check.sh

Check exit code:

echo $?

Capture:

- 04_manual_execution.png
- 05_health_report.png

## Lab 7 - Install The Project

Run:

sudo ./scripts/install.sh

Verify:

ls -l /opt/linux-health-check

ls -l /etc/linux-health-check

ls -l /etc/systemd/system/linux-health-check.*

## Lab 8 - Run Through systemd

Run:

sudo systemctl start linux-health-check.service

systemctl status linux-health-check.service

journalctl -u linux-health-check.service -n 50 --no-pager

Capture:

- 09_systemd_service.png
- 11_journal_logs.png

## Lab 9 - Enable Timer

Run:

sudo systemctl enable --now linux-health-check.timer

systemctl list-timers linux-health-check.timer

Capture:

- 10_systemd_timer.png

## Lab 10 - Simulate Service Failure

Stop Nginx:

sudo systemctl stop nginx

Run health check:

sudo systemctl start linux-health-check.service

Expected result:

- SERVICE status is CRITICAL
- Port 80 status is CRITICAL
- Service returns a non-zero status

Review:

journalctl -u linux-health-check.service -n 30 --no-pager

Capture:

- 07_service_failure.png
- 08_critical_exit_code.png

Restore:

sudo systemctl start nginx

## Lab 11 - Simulate CPU Load

Run:

stress-ng --cpu 2 --timeout 60s

Run the health check from another terminal.

Observe CPU and load results.

Do not keep artificial load running after validation.

## Lab 12 - Simulate Disk Warning Safely

Do not intentionally fill the root filesystem.

Temporarily lower the disk thresholds in the lab configuration.

Example:

DISK_WARNING=1

DISK_CRITICAL=99

Run the script and confirm a warning.

Restore the original configuration.

Capture:

- 12_disk_warning.png

## Lab 13 - Validate Recovery

Confirm:

- Nginx is active
- Port 80 is listening
- Script returns expected status
- Timer remains scheduled
- Logs contain recovery evidence

Capture:

- 13_recovery_validation.png

## Lab 14 - Push To GitHub

Before committing:

- Review project files
- Review screenshots
- Confirm there are no secrets
- Confirm no PEM files exist
- Confirm configuration contains no credentials

Run:

git status

git diff --check

git add Project01_Linux_Automation

git commit -m "Add Linux automation health check project"

git push origin main

Capture:

- 14_git_repository.png

## Lab 15 - AWS Cleanup

Before terminating EC2:

- Push all files to GitHub
- Download required screenshots
- Confirm project files are saved
- Disable the timer if the instance will remain
- Terminate the instance if it is no longer required
- Delete unused EBS volumes
- Review AWS Billing
