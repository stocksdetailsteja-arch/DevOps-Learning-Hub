# Jenkins Commands

## Check Jenkins Status

sudo systemctl status jenkins

## Start Jenkins

sudo systemctl start jenkins

## Restart Jenkins

sudo systemctl restart jenkins

## View Jenkins Logs

journalctl -u jenkins

## Check Java

java -version

## Check Maven

mvn -version

## Check Jenkins Port

ss -tulpn | grep 8080

## Validate Jenkinsfile

Replay Pipeline From Jenkins UI

## Build Maven Project

mvn clean package

## Execute Unit Tests

mvn test

## Git Clone

git clone <repository-url>

## Check GitHub Webhook

GitHub Repository

Settings

Webhooks

## List Running Jobs

Jenkins Dashboard

## Check Build History

Jenkins Dashboard

↓

Job

↓

Build History

## Check Workspace

ls $WORKSPACE
