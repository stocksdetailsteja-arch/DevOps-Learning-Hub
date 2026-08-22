# Day 01 - Advanced Jenkins Troubleshooting

## Scenario 1 - Java Command Not Found

### Symptom

java: command not found

### Investigation

- Check Java installation

- Check PATH

- Check Jenkins-supported Java requirements for the intended release

### Resolution

Install an approved compatible Java runtime in Day02.

### Validation

java -version

## Scenario 2 - Port 8080 Already In Use

### Symptom

Jenkins cannot bind to the configured port.

### Investigation

sudo ss -ltnp | grep ':8080'

### Root Cause Possibilities

- Another application

- Existing Jenkins instance

- Test web server

### Resolution

Stop or reconfigure the conflicting service after confirming ownership and impact.

## Scenario 3 - Jenkins Service Not Found

### Symptom

systemctl reports that the Jenkins unit does not exist.

### Root Cause

Jenkins is not installed through the expected service-management method.

### Resolution

Proceed with the approved installation in Day02.

## Scenario 4 - Insufficient Disk Space

### Symptoms

- Builds fail

- Workspaces cannot be created

- Plugins fail to update

- Artifacts cannot be archived

### Investigation

df -h

du -sh /var/lib/jenkins/* 2>/dev/null

### Prevention

- Build retention

- Workspace cleanup

- External artifact storage

- Disk alerts

- Log rotation

## Scenario 5 - Jenkins User Cannot Execute A Command

### Possible Causes

- Tool not installed

- PATH mismatch

- File permission

- Directory permission

- Service-user restriction

### Investigation

Compare command execution as the Jenkins service user.

Do not grant broad sudo access merely to bypass the issue.

## Scenario 6 - Jenkins UI Is Slow

### Investigation

- CPU

- Memory

- Disk utilization

- Build queue

- Executor usage

- Plugin errors

- Long-running jobs

- Controller-side builds

- Browser and network path

### Permanent Resolution

Move heavy work to agents and address the confirmed resource or plugin bottleneck.

## Scenario 7 - Build Queue Continuously Grows

### Possible Causes

- Agents offline

- Insufficient executors

- Incorrect labels

- Long-running builds

- Blocked resources

- Failed dynamic-agent provisioning

### Investigation

Review node status, queue reason, executor usage, and recent infrastructure changes.

## Scenario 8 - Agent Is Offline

### Investigation

- Agent machine state

- Network connectivity

- Java availability

- Agent logs

- Credentials

- Launch method

- Disk space

- Controller reachability

### Resolution

Correct the verified transport, authentication, runtime, or resource issue.

## Scenario 9 - Git Checkout Fails

### Possible Causes

- Incorrect repository URL

- Missing credentials

- Invalid branch

- SSH host verification

- Proxy restriction

- DNS or network issue

- Git not installed on agent

### Investigation

Test from the same agent and Jenkins runtime context.

## Scenario 10 - Credentials Printed In Console Output

### Immediate Response

- Stop unnecessary exposure

- Follow the approved security-incident process

- Rotate the credential if required

- Restrict access to affected logs

- Review where the secret was used

### Prevention

- Credentials binding

- Secret masking

- No echo statements

- No unrestricted tracing

- Least-privilege credentials

## Scenario 11 - Plugin Installation Breaks Jenkins

### Investigation

- Recent plugin changes

- Dependency compatibility

- Jenkins logs

- Java compatibility

- Backup availability

### Recovery

Use the approved rollback or plugin-recovery procedure.

Do not randomly delete production plugin files without a backup and recovery plan.

## Scenario 12 - Jenkins Restart Leaves Builds Stuck

### Investigation

- Build state

- Agent connectivity

- Durable pipeline state

- Workspace condition

- Pipeline logs

- External deployment state

### Resolution

Identify whether the build can resume safely or must be aborted and restarted.

Validate external side effects before retrying deployment stages.

## Scenario 13 - Pipeline Works On One Agent But Fails On Another

### Compare

- Operating system

- Java version

- Maven version

- Git version

- PATH

- Permissions

- Workspace path

- Network access

- Installed utilities

- Agent labels

### Prevention

Use standardized agent images or configuration automation.

## Scenario 14 - Build Is Successful But No Artifact Exists

### Possible Causes

- Wrong artifact path

- Packaging stage skipped

- Workspace changed

- Archive pattern incorrect

- Build generated artifact elsewhere

### Investigation

Review console output, workspace, packaging result, and archive configuration.

## Scenario 15 - Jenkins Works After Manual Start But Fails After Reboot

### Investigation

- Service enablement

- Startup dependencies

- Java path

- Filesystem mounts

- Network readiness

- Service logs

### Resolution

Correct the systemd service dependency or environment configuration after confirming the cause.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
