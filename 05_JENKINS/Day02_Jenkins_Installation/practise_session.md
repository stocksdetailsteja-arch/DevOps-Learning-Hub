# Day 02 - Jenkins Installation Practice Session

## Lab Objective

Install and configure Jenkins LTS on Ubuntu or an AWS EC2 Ubuntu instance.

## Practice Directory

From the repository root:

mkdir -p PRACTISE_SESSION/Day02_Jenkins_Installation_Lab

cd PRACTISE_SESSION/Day02_Jenkins_Installation_Lab

Verify:

pwd

## Lab 1 - Capture Pre-Installation State

Run:

cat /etc/os-release

free -h

df -h

nproc

sudo ss -ltnp | grep ':8080'

Expected:

System details are displayed.

Port 8080 should not already be occupied by an unrelated process.

Screenshot:

01_preinstallation_validation.png

## Lab 2 - Install Java 21

Run:

sudo apt update

sudo apt install fontconfig openjdk-21-jre -y

Validate:

java -version

which java

Screenshots:

02_java_installation.png

03_java_validation.png

## Lab 3 - Configure Jenkins Repository

Run:

sudo mkdir -p /etc/apt/keyrings

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

Add the Jenkins LTS repository:

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

Validate:

cat /etc/apt/sources.list.d/jenkins.list

Screenshots:

04_jenkins_key.png

05_jenkins_repository.png

## Lab 4 - Install Jenkins

Run:

sudo apt update

apt-cache policy jenkins

sudo apt install jenkins -y

Validate:

jenkins --version

Screenshot:

06_jenkins_installation.png

## Lab 5 - Enable And Start Jenkins

Run:

sudo systemctl enable jenkins

sudo systemctl start jenkins

Validate:

systemctl is-enabled jenkins

sudo systemctl status jenkins --no-pager

Screenshots:

07_enable_jenkins.png

08_jenkins_running.png

## Lab 6 - Verify Port 8080

Run:

sudo ss -ltnp | grep ':8080'

Expected:

A listening socket is shown for port 8080.

Screenshot:

09_port_8080.png

## Lab 7 - Configure AWS Security Group

For an EC2 lab instance, review the inbound rule for TCP port 8080.

Recommended learning configuration:

- Protocol = TCP

- Port = 8080

- Source = Your current public IP

Avoid unrestricted access where possible.

Screenshot:

10_security_group_redacted.png

## Lab 8 - Access Jenkins UI

Open in a browser:

http://SERVER_PUBLIC_IP:8080

Replace SERVER_PUBLIC_IP with the current EC2 public IP.

Do not upload the public IP if the screenshot is intended for a public repository.

Screenshot:

11_unlock_page_redacted.png

## Lab 9 - Retrieve Initial Password Securely

Run:

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

Copy the value into the Jenkins unlock page.

Do not save or screenshot the password.

## Lab 10 - Install Suggested Plugins

Choose:

Install suggested plugins

Observe plugin installation.

Do not close the setup page during installation.

Screenshot:

12_suggested_plugins.png

## Lab 11 - Create Administrator Account

Create a dedicated administrator account.

Security requirements:

- Use a strong password

- Do not use a shared credential

- Do not publish the username or email address

Screenshot:

13_admin_creation_redacted.png

## Lab 12 - Confirm Jenkins URL

Review the configured Jenkins URL.

Ensure the value represents the intended lab access path.

Screenshot:

14_jenkins_url_redacted.png

## Lab 13 - Verify Dashboard

Confirm:

- Dashboard loads

- Manage Jenkins is accessible

- No setup wizard remains

- Jenkins version is visible through system information or approved interface

Screenshot:

15_jenkins_dashboard.png

## Lab 14 - Review System Information

Navigate to:

Manage Jenkins

↓

System Information

Review:

- Java version

- Jenkins home

- Operating system

- Environment properties

Do not upload sensitive environment variables.

Screenshot:

16_system_information_redacted.png

## Lab 15 - Review Jenkins Home

Run:

sudo ls -ld /var/lib/jenkins

sudo du -sh /var/lib/jenkins

Screenshot:

17_jenkins_home.png

## Lab 16 - Review Service Logs

Run:

sudo journalctl -u jenkins --since today --no-pager

Validate that no critical startup error remains.

Screenshot:

18_service_logs_redacted.png

## Lab 17 - Test Controlled Restart

Run:

sudo systemctl restart jenkins

sudo systemctl status jenkins --no-pager

Open the dashboard again.

Screenshot:

19_restart_validation.png

## Lab 18 - Create Installation Report

Create:

installation_report.md

Include:

# Jenkins Installation Report

## Environment

- Operating system verified

- Java 21 verified

- Jenkins LTS installed

- Jenkins service enabled

- Jenkins service running

- Port 8080 verified

- Suggested plugins installed

- Administrator account created

- Jenkins URL reviewed

- Jenkins home verified

- Service restart tested

Screenshot:

20_installation_report.png

## Lab Validation Checklist

- Server readiness checked

- Java 21 verified

- Jenkins signing key added

- Jenkins repository added

- Jenkins installed

- Jenkins service enabled

- Jenkins service starts successfully

- Port 8080 listens

- Security Group restricted

- Jenkins unlocked

- Suggested plugins installed

- Administrator created

- Dashboard accessible

- Jenkins URL reviewed

- Jenkins home reviewed

- Logs reviewed

- Restart validated

## Cleanup And Cost Control

After completing screenshots and documentation:

Save all Markdown files

Upload required screenshots

Redact sensitive information

Commit changes

Push to GitHub

Verify working tree is clean

Stop or terminate EC2 if no longer needed

Review attached EBS resources

Verify unused resources are removed

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
