# Day 02 - Jenkins Installation Commands

## Important Version Note

The official Jenkins Ubuntu installation instructions currently use:

- OpenJDK 21

- Jenkins LTS repository

- Jenkins 2026 signing key

Do not copy an older repository key from an outdated tutorial.

## Command 1 - Verify Operating System

Command:

cat /etc/os-release

Purpose:

Confirm the Linux distribution and version.

Screenshot:

01_operating_system.png

## Command 2 - Update Package Metadata

Command:

sudo apt update

Purpose:

Refresh package metadata before installation.

Screenshot:

02_apt_update.png

## Command 3 - Install Java 21

Command:

sudo apt install fontconfig openjdk-21-jre -y

Purpose:

Install the Java runtime required by the current official Jenkins Linux installation guidance.

Screenshot:

03_java_installation.png

## Command 4 - Verify Java

Command:

java -version

Purpose:

Confirm Java availability and version.

Screenshot:

04_java_version.png

## Command 5 - Locate Java

Command:

which java

Purpose:

Display the Java executable path.

Screenshot:

05_java_location.png

## Command 6 - Create APT Keyrings Directory

Command:

sudo mkdir -p /etc/apt/keyrings

Purpose:

Ensure the directory required for the repository signing key exists.

Screenshot:

06_keyrings_directory.png

## Command 7 - Add Jenkins LTS Signing Key

Command:

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

Purpose:

Download the official Jenkins LTS repository signing key currently documented for Debian or Ubuntu.

Screenshot:

07_jenkins_key.png

## Command 8 - Add Jenkins LTS Repository

Command:

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

Purpose:

Add the official Jenkins LTS repository.

Screenshot:

08_jenkins_repository.png

## Command 9 - Verify Repository File

Command:

cat /etc/apt/sources.list.d/jenkins.list

Purpose:

Verify the repository entry.

Screenshot:

09_repository_validation.png

## Command 10 - Refresh Package Metadata

Command:

sudo apt update

Purpose:

Load package information from the newly added Jenkins repository.

Screenshot:

10_repository_update.png

## Command 11 - Inspect Jenkins Package Candidate

Command:

apt-cache policy jenkins

Purpose:

Display the available Jenkins package source and candidate version.

Screenshot:

11_jenkins_candidate.png

## Command 12 - Install Jenkins

Command:

sudo apt install jenkins -y

Purpose:

Install the Jenkins LTS package.

Screenshot:

12_jenkins_installation.png

## Command 13 - Verify Jenkins Version

Command:

jenkins --version

Purpose:

Display the installed Jenkins version when the package provides the command.

Screenshot:

13_jenkins_version.png

## Command 14 - Enable Jenkins Service

Command:

sudo systemctl enable jenkins

Purpose:

Configure Jenkins to start during system boot.

Screenshot:

14_enable_jenkins.png

## Command 15 - Start Jenkins

Command:

sudo systemctl start jenkins

Purpose:

Start Jenkins immediately.

Screenshot:

15_start_jenkins.png

## Command 16 - Check Jenkins Status

Command:

sudo systemctl status jenkins --no-pager

Purpose:

Verify the service state.

Expected:

active (running)

Screenshot:

16_jenkins_status.png

## Command 17 - Check Port 8080

Command:

sudo ss -ltnp | grep ':8080'

Purpose:

Verify that Jenkins is listening on TCP port 8080.

Screenshot:

17_port_8080.png

## Command 18 - Review Jenkins Process

Command:

ps -ef | grep '[j]enkins'

Purpose:

Display the Jenkins process.

Screenshot:

18_jenkins_process.png

## Command 19 - Review Jenkins Logs

Command:

sudo journalctl -u jenkins --since today --no-pager

Purpose:

Display Jenkins service logs from the current day.

Review the output before uploading screenshots.

Screenshot:

19_jenkins_logs.png

## Command 20 - Retrieve Initial Password

Command:

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

Purpose:

Retrieve the first-time setup password.

Security warning:

Do not capture the password value in a screenshot.

Do not upload it to GitHub.

## Command 21 - Check Jenkins Home Ownership

Command:

sudo ls -ld /var/lib/jenkins

Purpose:

Verify Jenkins home ownership and permissions.

Screenshot:

20_jenkins_home_permissions.png

## Command 22 - Stop Jenkins

Command:

sudo systemctl stop jenkins

Purpose:

Stop Jenkins in a controlled manner.

Validation:

sudo systemctl status jenkins --no-pager

Screenshot:

21_stop_jenkins.png

## Command 23 - Restart Jenkins

Command:

sudo systemctl restart jenkins

Purpose:

Restart Jenkins after an approved configuration change.

Validation:

sudo systemctl status jenkins --no-pager

Screenshot:

22_restart_jenkins.png

## Command 24 - Verify Service Enablement

Command:

systemctl is-enabled jenkins

Expected:

enabled

Screenshot:

23_service_enabled.png

## Command 25 - Verify Jenkins Runtime User

Command:

ps -o user,pid,ppid,cmd -C java

Purpose:

Review the user running Java processes.

Screenshot:

24_runtime_user.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
