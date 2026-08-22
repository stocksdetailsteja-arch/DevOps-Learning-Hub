# Day 02 - Jenkins Installation Concepts

## Why Jenkins Requires Java

Jenkins runs as a Java application.

The Jenkins service starts a Java process that loads the Jenkins application.

If a supported Java runtime is unavailable:

- Jenkins cannot start

- The service may report a Java error

- Plugins cannot load

- Jobs cannot execute

- The web interface remains unavailable

## Why Install Java Before Jenkins?

The official Jenkins documentation strongly recommends installing Java before Jenkins on Debian or Ubuntu.

If Jenkins is installed first and Java is installed later, the service may fail because the service environment was not initialized with a valid Java installation.

## Jenkins LTS vs Weekly Release

### Long-Term Support Release

The LTS release focuses on a stable release line.

Recommended for:

- Learning environments

- Controlled enterprise environments

- Production systems requiring planned upgrades

### Weekly Release

The weekly release provides new fixes and features more frequently.

It may require more frequent compatibility testing.

This tutorial uses the LTS repository.

## Jenkins Installation Flow

Ubuntu Server

↓

Update Package Metadata

↓

Install Java 21

↓

Add Jenkins Signing Key

↓

Add Jenkins LTS Repository

↓

Update Package Metadata

↓

Install Jenkins

↓

Start And Enable Service

↓

Verify Port 8080

↓

Open Jenkins UI

↓

Unlock Jenkins

↓

Install Plugins

↓

Create Administrator Account

↓

Validate Dashboard

## What Is A Package Signing Key?

A package signing key helps the package manager verify packages obtained from the configured repository.

The Jenkins repository entry references the Jenkins key stored under:

/etc/apt/keyrings/jenkins-keyring.asc

Do not bypass package signature verification merely to make installation succeed.

## What Is The Jenkins Service?

On the Ubuntu package installation, Jenkins runs as a systemd-managed service.

Common service operations include:

- Start

- Stop

- Restart

- Enable

- Disable

- Status

## Jenkins Runtime User

The package installation creates a dedicated Jenkins service user.

The Jenkins process should not run as the Linux root user for normal operation.

Benefits include:

- Reduced privileges

- Better process isolation

- Clear file ownership

- Reduced impact if a build or plugin is compromised

## Default Jenkins Port

Jenkins commonly listens on TCP port:

8080

The service can be checked using:

sudo ss -ltnp | grep ':8080'

For production use, administrators commonly place Jenkins behind a secured reverse proxy and HTTPS rather than exposing unrestricted direct administration access.

## Initial Administrator Password

After the first successful startup, Jenkins creates an initial password under:

/var/lib/jenkins/secrets/initialAdminPassword

The password is used only for initial setup.

Security rules:

- Do not screenshot the password value

- Do not add the password to documentation

- Do not commit the password to GitHub

- Do not share the password in chat

## Jenkins Setup Wizard

The setup wizard typically guides the administrator through:

- Unlocking Jenkins

- Installing plugins

- Creating the first administrator account

- Confirming the Jenkins URL

## Suggested Plugins

The setup wizard can install a suggested set of plugins.

Plugins add functionality such as:

- Git integration

- Pipeline support

- Credentials handling

- Build tools

- Test reporting

Jenkins is designed to be extended through plugins.

## Plugin Security

Plugins execute inside the Jenkins environment and must be governed carefully.

Best practices:

- Install only required plugins

- Review dependencies

- Keep plugins updated

- Test upgrades outside production

- Back up Jenkins before major plugin changes

- Remove unused plugins only through a controlled process

## Jenkins Home Directory

The common package-installation location is:

/var/lib/jenkins

Jenkins home contains important operational information such as:

- Job configurations

- Build history

- Plugin data

- System configuration

- User configuration

- Credential metadata

- Workspace-related data

Protect Jenkins home with appropriate permissions and backup controls.

## Jenkins Log Sources

Important sources include:

- systemctl status jenkins

- journalctl -u jenkins

- journalctl -u jenkins --since today

Logs help investigate:

- Java errors

- Startup failures

- Port conflicts

- Plugin failures

- Permission problems

- Configuration problems

## AWS EC2 Security Group

For a temporary learning environment, Jenkins UI access normally requires TCP port 8080.

Recommended:

- Source = Your current public IP

Avoid:

- Source = 0.0.0.0/0

SSH access on port 22 should also be restricted.

## Linux Firewall

If a local Linux firewall is enabled, it must allow the intended Jenkins traffic.

Do not enable or modify firewall rules blindly on a remote server.

A bad firewall change can disconnect the active SSH session.

## Jenkins URL

The Jenkins URL helps Jenkins generate absolute links.

Examples include links in:

- Notifications

- Build pages

- Callback integrations

- Webhooks

The configured URL must represent the intended user-access path.

## Jenkins Service Startup

Running:

sudo systemctl enable jenkins

configures the service to start through the boot process.

Running:

sudo systemctl start jenkins

starts the service now.

The commands serve different purposes.

## Installation Security Baseline

A learning installation should include:

- Restricted network access

- Dedicated administrator account

- Strong password

- No anonymous administration

- No hardcoded secrets

- Updated Java

- Updated Jenkins

- Required plugins only

- Backups before upgrades

## Backup Preparation

Before creating important jobs, document:

- Jenkins home location

- Jenkins package version

- Java version

- Plugin list

- Service configuration

- Backup destination

- Restore validation procedure

A backup is useful only when the restore process has been tested.

## Production Upgrade Principle

Before upgrading Jenkins:

Review Jenkins Java requirements

Review plugin compatibility

Back up Jenkins home

Test outside production

Create rollback steps

Schedule maintenance

Upgrade

Validate integrations and pipelines

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
