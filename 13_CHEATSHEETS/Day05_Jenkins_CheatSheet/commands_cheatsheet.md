# Jenkins Commands Cheat Sheet

## Check Jenkins Status

systemctl status jenkins

## Start Jenkins

systemctl start jenkins

## Stop Jenkins

systemctl stop jenkins

## Restart Jenkins

systemctl restart jenkins

## Jenkins Logs

journalctl -u jenkins

journalctl -u jenkins -f

## Check Jenkins Port

ss -tunlp | grep 8080

## Check Java

java -version

## Check Maven

mvn -version

## Check Git

git --version

## Check Docker

docker --version

## Jenkins Home

ls -la /var/lib/jenkins

## Backup Jenkins

tar -czvf jenkins_backup.tar.gz /var/lib/jenkins

## Process Check

ps -ef | grep jenkins

## Port Validation

curl http://localhost:8080

## Validate Jenkinsfile

Review in Pipeline Syntax Generator

## Agent Verification

Manage Jenkins

↓

Nodes

↓

Agent Status
