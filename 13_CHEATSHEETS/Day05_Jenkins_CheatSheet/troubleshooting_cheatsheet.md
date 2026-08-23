# Jenkins Troubleshooting Cheatsheet

## Jenkins Not Accessible

Check:

systemctl status jenkins

Check:

Port 8080

Check:

Firewall

## Jenkins Service Down

Check:

journalctl -u jenkins

java -version

## Build Failing

Check:

- Console Logs
- SCM Connectivity
- Credentials
- Build Tool

## Pipeline Stuck

Check:

- Queue
- Agent Availability
- Executors

The Jenkins workbook recommends checking queue status, agent status and execution resources. 【1-15074e】【2-6ca833】

## Agent Offline

Check:

- Agent Service
- Network
- Labels
- Connectivity

## GitHub Webhook Not Working

Check:

- GitHub Webhook URL
- Jenkins URL
- Payload Delivery Logs

## Credentials Failure

Check:

- Credentials ID
- Expiry
- Scope
- Permissions

## Maven Build Failure

Check:

mvn -version

Review:

- pom.xml
- Dependencies
- Repository Access

## Docker Build Failure

Check:

docker --version

Check:

- Docker Daemon
- Dockerfile
- Permissions

## Deployment Failure

Check:

- Pipeline Logs
- Credentials
- Target Server
- Network

## Queue Growing

Check:

- Busy Executors
- Offline Agents
- Heavy Jobs

## Rollback Strategy
