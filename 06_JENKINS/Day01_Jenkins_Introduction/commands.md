# Day 01 - Jenkins Introduction Commands

## Important Note

Day01 focuses on concepts and environment inspection.

The complete Jenkins installation belongs in Day02_Jenkins_Installation.

## Command 1 - Check Operating System

Command:

cat /etc/os-release

Purpose:

Display Linux distribution information.

Screenshot:

01_operating_system.png

## Command 2 - Check Hostname

Command:

hostname

Purpose:

Display the server hostname.

Screenshot:

02_hostname.png

## Command 3 - Check Java

Command:

java -version

Purpose:

Verify whether Java is installed.

Screenshot:

03_java_version.png

## Command 4 - Locate Java

Command:

which java

Purpose:

Display the Java executable location.

Screenshot:

04_java_location.png

## Command 5 - Check Available Memory

Command:

free -h

Purpose:

Review server memory before Jenkins installation.

Screenshot:

05_memory_check.png

## Command 6 - Check Disk Space

Command:

df -h

Purpose:

Review available filesystem capacity.

Screenshot:

06_disk_check.png

## Command 7 - Check CPU Information

Command:

nproc

Purpose:

Display available processing units reported by the system.

Screenshot:

07_cpu_check.png

## Command 8 - Check Port 8080

Command:

sudo ss -ltnp | grep ':8080'

Purpose:

Check whether another process is already listening on TCP port 8080.

No output normally means no matching listening socket was found.

Screenshot:

08_port_8080_check.png

## Command 9 - Check Jenkins Package

Command:

dpkg -l | grep jenkins

Purpose:

Check whether a Jenkins package is already installed on a Debian-based system.

Screenshot:

09_jenkins_package_check.png

## Command 10 - Check Jenkins Service

Command:

systemctl status jenkins

Purpose:

Check whether a Jenkins systemd service exists and view its state.

A missing-unit message is expected when Jenkins is not installed.

Screenshot:

10_jenkins_service_check.png

## Command 11 - Check Git

Command:

git --version

Purpose:

Verify Git availability for future Jenkins source-code checkout activities.

Screenshot:

11_git_version.png

## Command 12 - Check Maven

Command:

mvn -version

Purpose:

Verify Maven availability for Java builds.

A command-not-found result means Maven is not installed or not available through PATH.

Screenshot:

12_maven_version.png

## Command 13 - Review Running Java Processes

Command:

ps -ef | grep '[j]ava'

Purpose:

Display running Java processes without matching the grep process itself.

Screenshot:

13_java_processes.png

## Command 14 - Review Current User

Command:

whoami

Purpose:

Display the user performing the lab.

Screenshot:

14_current_user.png

## Command 15 - Review Network Addresses

Command:

hostname -I

Purpose:

Display assigned IP addresses.

Redact sensitive IP information before public upload when required.

Screenshot:

15_ip_addresses_redacted.png

## Pre-Installation Validation Sequence

cat /etc/os-release

hostname

java -version

free -h

df -h

nproc

sudo ss -ltnp | grep ':8080'

git --version

mvn -version

systemctl status jenkins

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
