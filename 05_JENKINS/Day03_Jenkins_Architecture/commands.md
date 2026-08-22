# Day 03 - Jenkins Architecture Commands

## Check Jenkins Service

sudo systemctl status jenkins

Screenshot:

01_service_status.png

## View Running Jenkins Process

ps -ef | grep jenkins

Screenshot:

02_jenkins_process.png

## Verify Jenkins Port

sudo ss -ltnp | grep ':8080'

Screenshot:

03_port_validation.png

## View Workspace Location

Navigate:

Jenkins Dashboard

↓

Job

↓

Workspace

Screenshot:

04_workspace.png

## View Nodes

Manage Jenkins

↓

Nodes

Screenshot:

05_nodes.png

## View Built-In Node

Manage Jenkins

↓

Nodes

↓

Built-In Node

Screenshot:

06_builtin_node.png

## View Executors

Manage Jenkins

↓

Nodes

↓

Built-In Node

↓

Executors

Screenshot:

07_executors.png

## View System Information

Manage Jenkins

↓

System Information

Screenshot:

08_system_information.png

## View Credentials

Manage Jenkins

↓

Credentials

Screenshot:

09_credentials.png

## View Plugins

Manage Jenkins

↓

Plugins

Screenshot:

10_plugins.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
