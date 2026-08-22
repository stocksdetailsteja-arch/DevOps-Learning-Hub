# Day 02 - Jenkins Installation Interview Questions And Answers

## Basic Questions

### Q1. Why Does Jenkins Require Java?

Jenkins runs as a Java application and requires a supported Java runtime.

### Q2. Which Java Version Is Used In This Tutorial?

OpenJDK 21 is used because the current official Jenkins Linux installation guide demonstrates Java 21 for Debian or Ubuntu.

### Q3. What Is The Default Jenkins Port In This Lab?

TCP port 8080.

### Q4. How Do You Check Jenkins Status?

sudo systemctl status jenkins

### Q5. How Do You Enable Jenkins After Reboot?

sudo systemctl enable jenkins

### Q6. Where Is The Initial Administrator Password?

/var/lib/jenkins/secrets/initialAdminPassword

### Q7. What Is Jenkins Home?

Jenkins home is the main Jenkins data directory containing configuration and operational data.

## Intermediate Questions

### Q1. What Is The Difference Between Starting And Enabling Jenkins?

Starting Jenkins runs the service now.

Enabling Jenkins configures it to start through the boot process.

### Q2. How Do You Verify Jenkins Is Listening?

sudo ss -ltnp | grep ':8080'

### Q3. How Do You Review Jenkins Logs?

sudo journalctl -u jenkins

### Q4. Why Should Jenkins Not Run As Root?

Running as a dedicated service user reduces privileges and limits the impact of compromised jobs or plugins.

### Q5. Why Use Jenkins LTS?

The LTS release line is intended for users preferring the stable release line rather than frequent weekly changes.

### Q6. What Is Stored Under Jenkins Home?

Typical contents include:

- Job configuration

- Plugin data

- Build records

- System configuration

- User configuration

- Credential metadata

### Q7. Why Can Jenkins Be Running But Remain Inaccessible?

Possible layers include:

- Port binding

- Linux firewall

- AWS Security Group

- Route

- Public IP

- Proxy

- Browser path

## Advanced Questions For 5+ Years Experience

### Q1. Jenkins Is Installed But The Service Does Not Start. How Do You Investigate?

Check the service status

Review detailed service logs

Verify Java version

Verify the Java executable

Check port conflicts

Check disk space

Check memory

Check Jenkins home permissions

Review recent package or plugin changes

Correct the confirmed root cause

Restart the service

Validate the dashboard

Useful commands:

- systemctl status jenkins

- journalctl -u jenkins

- java -version

- ss -ltnp

- df -h

- free -h

### Q2. Jenkins UI Works Locally But Not From A Browser. What Do You Check?

Check layer by layer:

Jenkins service

Local listening socket

EC2 Security Group

Network ACL

Route to the instance

Public or private IP

Linux firewall

Proxy or corporate firewall

Browser URL

Reverse-proxy configuration

Local service availability does not prove external network reachability.

### Q3. How Do You Verify Which Java Jenkins Uses?

Check:

- Jenkins service process

- systemd service environment

- Java executable path

- Jenkins system information

- Service logs

Do not assume the interactive user's Java is automatically the service's Java.

### Q4. How Would You Migrate Jenkins To Another Server?

Record Jenkins and Java versions

Record installed plugins

Stop writes or schedule maintenance

Back up Jenkins home securely

Prepare the target server

Install compatible Java and Jenkins versions

Restore Jenkins home with correct ownership

Start Jenkins

Validate jobs

Validate credentials

Validate agents

Validate Git and webhook integrations

Validate pipelines

Maintain rollback until acceptance

### Q5. How Would You Upgrade Jenkins Safely?

Review release notes

Review Java requirements

Review plugin compatibility

Back up Jenkins home

Test in non-production

Define rollback

Schedule maintenance

Upgrade

Validate service startup

Validate jobs, pipelines, agents, plugins, and credentials

Monitor after upgrade

### Q6. How Do You Recover From A Plugin Upgrade Failure?

Stop further changes

Capture logs

Identify the changed plugin and dependencies

Confirm backup availability

Follow the approved rollback procedure

Restore compatible plugin state or Jenkins backup

Start Jenkins

Validate jobs and pipelines

Document root cause

Never randomly remove plugin files in production without a recovery plan.

### Q7. How Would You Secure Jenkins On AWS EC2?

- Restrict Security Group access

- Prefer HTTPS

- Place Jenkins behind controlled network access

- Use strong authentication

- Apply role-based authorization

- Use IAM roles instead of access keys

- Protect Jenkins home

- Encrypt backups

- Monitor system and application health

- Maintain patching

- Review plugins

- Avoid builds on the controller where practical

### Q8. Why Does Jenkins Start Manually But Fail After Reboot?

Possible causes include:

- Service not enabled

- Filesystem mount unavailable

- Network dependency not ready

- Java path difference

- Environment variable difference

- Permission issue

- Service dependency ordering

Check systemd enablement and boot logs.

### Q9. What Evidence Should Be Collected Before Restarting Production Jenkins?

- Service status

- Jenkins logs

- System logs

- CPU

- Memory

- Disk

- Build queue

- Executor state

- Agent state

- Running build information

- Recent plugin changes

- Recent configuration changes

- Active deployments

Restarting without checking active deployment state can create duplicate or incomplete actions.

### Q10. How Do You Plan Jenkins Controller Capacity?

Consider:

- Concurrent users

- Job count

- Build queue size

- Plugin footprint

- Configuration size

- Build history

- Disk growth

- Controller-side workload

- Agent count

- Monitoring data

- Backup window

Heavy compilation and testing should normally run on agents.

### Q11. How Do You Protect Jenkins Backups?

- Encrypt backup storage

- Restrict access

- Protect credential-related data

- Define retention

- Monitor backup success

- Test restore

- Avoid public storage

- Record versions and dependencies

### Q12. Jenkins Installation Works Today But Fails After Java Upgrade. Why?

Possible reasons include:

- Unsupported Java version

- Changed Java path

- Service environment mismatch

- Plugin incompatibility

- Startup option incompatibility

Validate the Jenkins-supported Java requirement before upgrading Java.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
