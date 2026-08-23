# Jenkins Commands

## Check Jenkins Status

systemctl status jenkins

## Start Jenkins

systemctl start jenkins

## Stop Jenkins

systemctl stop jenkins

## Restart Jenkins

systemctl restart jenkins

## View Jenkins Logs

journalctl -u jenkins

## Follow Jenkins Logs

journalctl -u jenkins -f

## Check Port

ss -tunlp | grep 8080

## Verify Java

java -version

## Verify Maven

mvn -version

## Verify Git

git --version

## Verify Docker

docker --version

## Jenkins Home

ls -la /var/lib/jenkins

## Backup Jenkins

tar -czvf jenkins_backup.tar.gz /var/lib/jenkins

## Validate Jenkinsfile

Review syntax in Jenkins Pipeline Editor

## Agent Validation

Check:

- Agent Online Status
- Labels
- Executors
