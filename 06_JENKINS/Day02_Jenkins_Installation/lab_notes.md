# Day 02 - Jenkins Installation Lab Notes

## Lab Objective

Install Jenkins LTS with Java 21 and complete secure initial configuration.

## Practice Directory

PRACTISE_SESSION/Day02_Jenkins_Installation_Lab

## Environment Used

- Ubuntu Linux

- AWS EC2 or equivalent Linux server

- OpenJDK 21

- Jenkins LTS

- systemd

- Web browser

## Commands Executed

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

- ss

- ps

- journalctl

- ls

- du

## Activities Completed

- Validated server capacity

- Installed Java 21

- Added Jenkins signing key

- Added Jenkins LTS repository

- Installed Jenkins

- Enabled Jenkins service

- Started Jenkins service

- Verified port 8080

- Accessed setup wizard

- Unlocked Jenkins

- Installed suggested plugins

- Created administrator account

- Reviewed Jenkins URL

- Reviewed Jenkins home

- Reviewed Jenkins logs

- Tested service restart

## Observations

- Java must be installed before Jenkins.

- Jenkins runs through a systemd service.

- Jenkins listens on port 8080 by default in this lab.

- The Jenkins package creates a dedicated runtime user.

- Jenkins home contains critical configuration and operational data.

- Plugin installation increases startup time and disk use.

- Security Group access and Linux service status are separate layers.

- Browser access can fail even when the service is running.

## Results

Successfully:

- Installed Java 21

- Installed Jenkins LTS

- Started Jenkins

- Enabled startup after reboot

- Completed initial setup

- Installed suggested plugins

- Created an administrator account

- Verified dashboard access

- Verified service restart

## Lessons Learned

- Always verify the current official Java requirement.

- Use the current Jenkins signing key.

- Restrict Jenkins network access.

- Never expose the initial password.

- Protect Jenkins home.

- Review logs before changing configuration.

- Test backup and restore before production use.

- Monitor disk, memory, and service availability.

## Screenshot Location

Day02_Jenkins_Installation_Lab_Screenshots/

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
