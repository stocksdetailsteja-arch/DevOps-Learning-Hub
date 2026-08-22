# Day 02 - Jenkins Installation Summary

## Topics Covered

- Ubuntu validation

- Java 21

- Jenkins LTS repository

- Jenkins signing key

- Jenkins installation

- systemd service

- Port 8080

- Security Group

- Initial administrator password

- Suggested plugins

- Administrator account

- Jenkins URL

- Jenkins home

- Jenkins logs

- Security baseline

- Backup preparation

## Commands Learned

- apt update

- apt install

- java -version

- which java

- wget

- tee

- apt-cache policy

- systemctl enable

- systemctl start

- systemctl stop

- systemctl restart

- systemctl status

- systemctl is-enabled

- ss

- ps

- journalctl

- ls

- du

## Important Locations

- Jenkins home = /var/lib/jenkins

- Initial password = /var/lib/jenkins/secrets/initialAdminPassword

- Repository file = /etc/apt/sources.list.d/jenkins.list

- Signing key = /etc/apt/keyrings/jenkins-keyring.asc

## Installation Flow

Ubuntu

↓

Java 21

↓

Jenkins Signing Key

↓

Jenkins LTS Repository

↓

Jenkins Package

↓

systemd Service

↓

Port 8080

↓

Unlock Page

↓

Suggested Plugins

↓

Administrator Account

↓

Jenkins Dashboard

## Production Notes

- Install Java before Jenkins

- Use the current official repository key

- Restrict network access

- Do not expose credentials

- Protect Jenkins home

- Install only required plugins

- Monitor disk and memory

- Back up before upgrades

- Test restart and restore

- Use agents for heavy builds

## Interview Quick Notes

Jenkins runs on Java.

The package installation creates a Jenkins service.

Start and enable perform different operations.

Port 8080 is used by the direct lab installation.

Jenkins home contains critical configuration.

Plugins add functionality but introduce dependencies and risk.

Browser failure can occur even when the service is running.

## Key Takeaways

- Jenkins installation is more than running an install command.

- Java compatibility must be validated.

- Service, port, network, and browser access are separate layers.

- Jenkins home must be secured and backed up.

- Plugin governance begins during initial setup.

- Production readiness requires monitoring, backup, security, and recovery testing.

## Next Topic

Day03_Jenkins_Architecture

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
