# Day 01 - Jenkins Introduction Lab Notes

## Lab Objective

Understand Jenkins fundamentals, CI/CD concepts, Jenkins architecture, and server-readiness requirements.

## Practice Directory

PRACTISE_SESSION/Day01_Jenkins_Introduction_Lab

## Commands Executed

- cat /etc/os-release

- hostname

- whoami

- java -version

- which java

- free -h

- df -h

- nproc

- ss

- git --version

- mvn -version

- dpkg

- systemctl

## Concepts Reviewed

- Jenkins

- Continuous Integration

- Continuous Delivery

- Continuous Deployment

- Controller

- Agent

- Node

- Executor

- Workspace

- Job

- Build

- Pipeline

- Jenkinsfile

- Plugin

## Observations

- Jenkins depends on a suitable Java runtime.

- Port conflicts must be checked before service installation.

- Memory and disk capacity affect Jenkins reliability.

- Source-control integration requires Git.

- Java projects commonly require a build tool such as Maven.

- Jenkins controllers coordinate work.

- Jenkins agents execute assigned work.

- Pipeline as Code stores delivery logic in source control.

## Results

Successfully:

- Reviewed Jenkins concepts

- Documented CI and CD workflows

- Reviewed controller-agent architecture

- Checked Linux readiness

- Checked Java availability

- Checked Git and Maven availability

- Checked port 8080

- Prepared the environment for Day02 installation

## Lessons Learned

- Verify prerequisites before installing Jenkins.

- Do not expose Jenkins without access controls.

- Do not hardcode secrets.

- Plan controller and agent responsibilities.

- Monitor disk and memory from the beginning.

- Store pipeline definitions in source control.

## Screenshot Location

Day01_Jenkins_Introduction_Lab_Screenshots/

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
