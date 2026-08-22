# Day 01 - Jenkins Introduction Practice Session

## Practice Objective

Understand Jenkins terminology and verify the Linux server before the Jenkins installation module.

## Practice Directory

From the repository root:

mkdir -p PRACTISE_SESSION/Day01_Jenkins_Introduction_Lab

cd PRACTISE_SESSION/Day01_Jenkins_Introduction_Lab

Verify:

pwd

## Lab 1 - Verify Operating System

Run:

cat /etc/os-release

Record:

- Distribution

- Version

Screenshot:

01_operating_system.png

## Lab 2 - Verify Server Identity

Run:

hostname

whoami

Screenshots:

02_hostname.png

03_current_user.png

## Lab 3 - Verify Java

Run:

java -version

which java

Record whether Java is installed.

Screenshots:

04_java_version.png

05_java_location.png

## Lab 4 - Verify System Capacity

Run:

free -h

df -h

nproc

Screenshots:

06_memory_check.png

07_disk_check.png

08_cpu_check.png

## Lab 5 - Verify Port Availability

Run:

sudo ss -ltnp | grep ':8080'

Expected:

- No matching output if port 8080 is unused

- Process details if port 8080 is already occupied

Screenshot:

09_port_8080_check.png

## Lab 6 - Verify Git

Run:

git --version

Screenshot:

10_git_version.png

## Lab 7 - Verify Maven

Run:

mvn -version

Record whether Maven is installed.

Screenshot:

11_maven_version.png

## Lab 8 - Check For Existing Jenkins Installation

Run:

dpkg -l | grep jenkins

systemctl status jenkins

Expected:

Jenkins may not be present before Day02.

Screenshot:

12_existing_jenkins_check.png

## Lab 9 - Create CI Workflow Notes

Create:

ci_workflow_notes.md

Add:

# Continuous Integration Workflow

- Developer commits code

- Developer pushes code

- Jenkins receives a trigger

- Jenkins checks out source code

- Jenkins builds the application

- Jenkins runs tests

- Jenkins publishes the result

Screenshot:

13_ci_workflow_notes.png

## Lab 10 - Create CD Workflow Notes

Create:

cd_workflow_notes.md

Add:

# Continuous Delivery Workflow

- Build

- Test

- Package

- Deploy to test environment

- Validate

- Approve production release

- Deploy to production

Screenshot:

14_cd_workflow_notes.png

## Lab 11 - Create Jenkins Architecture Notes

Create:

jenkins_architecture_notes.md

Add:

# Jenkins Architecture

- Git repository

- Jenkins controller

- Build queue

- Jenkins agent

- Executor

- Workspace

- Build result

Screenshot:

15_jenkins_architecture_notes.png

## Lab 12 - Create Day01 Readiness Report

Create:

day01_readiness_report.md

Include:

- Operating system verified

- Java status checked

- Memory checked

- Disk checked

- CPU checked

- Port 8080 checked

- Git checked

- Maven checked

- Jenkins installation status checked

Screenshot:

16_day01_readiness_report.png

## Lab Validation Checklist

- Operating system verified

- Hostname verified

- Current user verified

- Java availability checked

- Memory checked

- Disk capacity checked

- CPU checked

- Port 8080 checked

- Git verified

- Maven checked

- Existing Jenkins status checked

- CI workflow documented

- CD workflow documented

- Jenkins architecture documented

## Cleanup

Day01 should not install Jenkins.

Keep the notes and screenshots.

Do not leave unnecessary background processes running.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
