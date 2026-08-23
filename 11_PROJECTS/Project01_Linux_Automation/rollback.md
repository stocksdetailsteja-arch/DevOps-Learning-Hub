# Project 01 - Rollback

## Rollback Triggers

Rollback when:

- New script produces invalid results
- Script fails repeatedly
- Timer creates unexpected load
- Configuration causes false alerts
- Installation changes permissions incorrectly
- systemd unit cannot execute safely

## Disable Scheduled Execution

sudo systemctl disable --now linux-health-check.timer

## Stop Running Service

sudo systemctl stop linux-health-check.service

## Restore Previous Script

Restore the previously tested version from Git.

Example workflow:

git log --oneline

git checkout <previous-commit> -- Project01_Linux_Automation

Review the restored files before installation.

## Restore Previous Configuration

Restore the backed-up configuration:

sudo cp /etc/linux-health-check/health-check.conf.backup \
    /etc/linux-health-check/health-check.conf

## Reinstall Restored Version

sudo ./scripts/install.sh

## Reload systemd

sudo systemctl daemon-reload

## Manual Validation

sudo systemctl start linux-health-check.service

systemctl status linux-health-check.service

journalctl -u linux-health-check.service -n 50 --no-pager

## Re-enable Timer

Only after successful validation:

sudo systemctl enable --now linux-health-check.timer

## Complete Removal

sudo systemctl disable --now linux-health-check.timer

sudo rm -f /etc/systemd/system/linux-health-check.service

sudo rm -f /etc/systemd/system/linux-health-check.timer

sudo rm -rf /opt/linux-health-check

sudo rm -rf /etc/linux-health-check

sudo systemctl daemon-reload

sudo systemctl reset-failed

## Post-Rollback Validation

Verify:

- Timer state is expected
- No recurring failures remain
- Nginx remains healthy
- System resources are normal
- Log files contain final evidence
- Git repository contains the restored version
