# Day 02 - Advanced Jenkins Installation Troubleshooting

## Scenario 1 - Jenkins Failed To Find Java

### Symptom

Jenkins fails to start and reports that a valid Java installation cannot be found.

### Investigation

- java -version

- which java

- systemctl status jenkins

- journalctl -u jenkins

### Root Cause

Java is missing, unsupported, or unavailable to the service.

### Resolution

Install a supported Java runtime before Jenkins and restart the service.

### Validation

sudo systemctl status jenkins --no-pager

## Scenario 2 - Jenkins Repository Key Failure

### Symptom

APT reports a signature or repository verification error.

### Investigation

- Verify the signing-key file

- Verify the repository entry

- Check system time

- Check HTTPS connectivity

### Resolution

Use the current official Jenkins signing key and repository instructions.

### Prevention

Do not rely on old tutorials containing expired signing keys.

## Scenario 3 - Jenkins Package Cannot Be Located

### Investigation

- Check repository file

- Run apt update

- Review apt update errors

- Run apt-cache policy jenkins

### Root Cause Possibilities

- Repository not added

- Invalid repository entry

- Repository update failed

- Network or DNS issue

## Scenario 4 - Port 8080 Already In Use

### Investigation

sudo ss -ltnp | grep ':8080'

### Resolution

Identify the owning process.

Stop or reconfigure the conflicting service only after confirming impact.

Do not kill an unknown process blindly.

## Scenario 5 - Browser Times Out

### Investigation

- Jenkins service

- Port 8080

- AWS Security Group

- Route

- Public IP

- Linux firewall

- Corporate network restrictions

### Resolution

Correct the specific failed layer.

## Scenario 6 - Initial Administrator Password Missing

### Investigation

- Confirm Jenkins completed first startup

- Review service status

- Review service logs

- Verify Jenkins home

- Verify filesystem permissions

### Resolution

Fix the startup problem first.

Do not create an arbitrary password file.

## Scenario 7 - Jenkins Home Permission Failure

### Symptoms

- Jenkins cannot save configuration

- Jobs fail to create files

- Plugins fail to install

### Investigation

sudo ls -ld /var/lib/jenkins

Review ownership of affected files.

### Prevention

Avoid recursive ownership changes without understanding the required filesystem structure.

## Scenario 8 - Disk Full During Plugin Installation

### Symptoms

- Plugin installation fails

- Jenkins becomes unstable

- Configuration cannot be written

### Investigation

df -h

sudo du -sh /var/lib/jenkins/* 2>/dev/null

### Resolution

Free or expand storage through an approved procedure.

### Prevention

Configure disk monitoring and retention.

## Scenario 9 - Jenkins Restart Loop

### Investigation

- journalctl -u jenkins

- Java version

- Recent plugin changes

- Service configuration

- Memory availability

- Disk availability

- File permissions

### Resolution

Correct the confirmed startup failure.

Do not repeatedly restart without reviewing logs.

## Scenario 10 - Jenkins Does Not Start After Reboot

### Investigation

- systemctl is-enabled jenkins

- systemctl status jenkins

- Boot logs

- Network and mount dependencies

- Java path

### Resolution

Enable the service or correct the startup dependency.

## Scenario 11 - Plugin Installation Fails

### Possible Causes

- Network restriction

- Proxy configuration

- Certificate trust

- Update-site issue

- Disk full

- Plugin dependency conflict

### Investigation

Review Jenkins logs and plugin manager output.

## Scenario 12 - Jenkins Controller Uses Excessive Memory

### Investigation

- Java process memory

- Plugin count

- Running controller-side builds

- Build history

- Queue

- Executor count

- Logs

### Permanent Resolution

Move heavy work to agents, remove unnecessary plugins through a controlled process, and size the controller appropriately.

## Scenario 13 - Jenkins URL Is Incorrect

### Impact

Generated links, callbacks, and notifications may reference the wrong address.

### Resolution

Update the Jenkins URL through approved system configuration and validate integrations.

## Scenario 14 - Credentials Exposed In Screenshot Or GitHub

### Immediate Response

- Remove public exposure through the approved process

- Rotate the affected credential

- Review access and audit activity

- Restrict the affected repository or log

- Follow the organizational security-incident procedure

### Prevention

Redact sensitive data before screenshots and commits.

## Scenario 15 - Backup Restore Fails

### Investigation

- Backup completeness

- Jenkins version

- Java version

- Plugin compatibility

- File ownership

- Encryption keys or credential protection

- Restore logs

### Prevention

Test restoration regularly rather than assuming the backup is valid.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
