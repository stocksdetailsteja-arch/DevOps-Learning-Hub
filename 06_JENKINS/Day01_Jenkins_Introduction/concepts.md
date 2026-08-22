# Day 01 - Jenkins Introduction Concepts

## What Is Jenkins?

Jenkins is a self-contained, open-source automation server.

Jenkins can automate tasks related to:

- Building software

- Testing software

- Delivering software

- Deploying software

Jenkins supports additional functionality through plugins.

## Why Is Jenkins Used?

Without automation, teams may perform repetitive tasks manually.

Examples:

- Pull source code

- Compile application

- Run tests

- Package application

- Copy artifacts

- Deploy application

- Validate deployment

Jenkins can coordinate these steps as repeatable automated workflows.

## What Is Continuous Integration?

Continuous Integration is the practice of frequently integrating code changes into a shared repository and automatically validating those changes.

A typical flow is:

Developer

↓

Git Commit

↓

Git Push

↓

Jenkins Trigger

↓

Checkout

↓

Compile

↓

Unit Tests

↓

Quality Validation

↓

Build Result

## Benefits Of Continuous Integration

- Faster feedback

- Early defect detection

- Repeatable builds

- Reduced integration problems

- Improved visibility

- Automated validation

Continuous Integration does not guarantee bug-free software. The effectiveness depends on test quality, pipeline design, and engineering practices.

## What Is Continuous Delivery?

Continuous Delivery keeps software in a deployable state through automated build, test, packaging, and environment-validation processes.

Production deployment may still require approval.

Example:

Code Change

↓

Automated Build

↓

Automated Testing

↓

Artifact Creation

↓

Test Deployment

↓

Validation

↓

Manual Production Approval

↓

Production Deployment

## What Is Continuous Deployment?

Continuous Deployment extends delivery automation by allowing validated software changes to reach production automatically.

A production-grade Continuous Deployment process requires:

- Reliable automated tests

- Security checks

- Deployment validation

- Monitoring

- Rollback

- Auditability

- Controlled permissions

## Continuous Integration vs Continuous Delivery vs Continuous Deployment

Continuous Integration

Focus:

- Integrate changes

- Build code

- Run tests

- Provide feedback

Continuous Delivery

Focus:

- Keep software deployable

- Automate release preparation

- Allow controlled production approval

Continuous Deployment

Focus:

- Automatically release validated changes

- Remove mandatory manual production approval

## What Is A Jenkins Controller?

The Jenkins controller coordinates Jenkins operations.

Typical controller responsibilities include:

- Storing configuration

- Managing jobs

- Scheduling builds

- Managing build queues

- Assigning work to agents

- Managing plugins

- Managing credentials

- Displaying build results

The controller should not become overloaded with every heavy build task in a production environment.

## What Is A Jenkins Agent?

A Jenkins agent is a machine or execution environment that performs work assigned by the controller.

Agents may run on:

- Linux virtual machines

- Windows systems

- AWS EC2 instances

- Docker containers

- Kubernetes pods

- On-premises servers

## Controller And Agent Flow

Developer Push

↓

Git Repository

↓

Jenkins Controller

↓

Build Queue

↓

Selected Agent

↓

Workspace

↓

Build And Test

↓

Result Returned To Controller

## What Is A Node?

A node is a machine registered with Jenkins that can execute work.

The controller itself is also a Jenkins node, although production teams may restrict controller-side build execution.

## What Is An Executor?

An executor is an execution slot on a Jenkins node.

An executor allows a node to run a build.

More executors can allow more concurrent work, but executor count must match available CPU, memory, disk, and workload behavior.

Increasing executors without capacity planning can cause resource contention.

## What Is A Jenkins Job?

A Jenkins job defines automated work.

Examples:

- Compile Java application

- Run Maven tests

- Build a JAR

- Build a Docker image

- Upload an artifact

- Deploy an application

- Execute a health check

- Run an administrative script

## What Is A Jenkins Build?

A build is one execution of a Jenkins job or pipeline.

A build commonly contains:

- Build number

- Start time

- Duration

- Status

- Console output

- Parameters

- Artifacts

- Test results

## Common Build Statuses

Success

The configured workflow completed successfully.

Failure

One or more required steps failed.

Unstable

A build completed, but results such as tests or quality checks did not meet the configured standard.

Aborted

The build was manually or automatically stopped before completion.

## What Is A Workspace?

A workspace is the filesystem location where Jenkins performs job operations.

A workspace may contain:

- Checked-out source code

- Generated files

- Build outputs

- Temporary files

- Test reports

Workspaces should not be treated as permanent artifact storage.

## What Is A Plugin?

A plugin extends Jenkins functionality.

Plugin areas include:

- Git integration

- Pipeline functionality

- Credentials

- Build tools

- Test reporting

- Notifications

- Cloud agents

- Security

Jenkins documentation describes Jenkins as highly extensible through plugins.

## Plugin Risks

Plugins can introduce:

- Compatibility issues

- Security vulnerabilities

- Upgrade dependencies

- Performance overhead

- Configuration complexity

Production best practices:

- Install only required plugins

- Review plugin dependencies

- Keep plugins updated

- Test plugin upgrades

- Remove unused plugins carefully

- Maintain backups before upgrades

## What Is Jenkins Pipeline?

Jenkins Pipeline is a collection of plugins for implementing Continuous Delivery pipelines.

A Pipeline models the delivery process as code through Pipeline syntax.

## What Is Pipeline As Code?

Pipeline as Code stores pipeline logic with the application source code.

Benefits include:

- Version control

- Code review

- Audit history

- Reproducibility

- Collaboration

- Branch-specific pipelines

## What Is A Jenkinsfile?

A Jenkinsfile is a text file containing the Jenkins Pipeline definition.

The Jenkins documentation recommends storing the Jenkinsfile in source control because it supports review, versioning, audit history, branches, and pull requests.

## Pipeline Stages And Steps

Stage

A logical phase of a pipeline.

Examples:

- Checkout

- Build

- Test

- Package

- Deploy

- Validate

Step

An individual action inside a stage.

Examples:

- Run Maven

- Execute shell command

- Archive an artifact

- Publish a test result

## Declarative Pipeline

Declarative Pipeline provides structured syntax designed to make pipeline code easier to write and read.

Common elements:

- pipeline

- agent

- stages

- stage

- steps

- environment

- parameters

- post

## Scripted Pipeline

Scripted Pipeline provides flexible, code-oriented behavior.

Scripted Pipeline can support complex workflows but requires disciplined design to remain readable and maintainable.

## Jenkins Integration Flow

Developer

↓

GitHub Repository

↓

Webhook Or Trigger

↓

Jenkins Pipeline

↓

Checkout

↓

Build

↓

Test

↓

Artifact

↓

Deploy

↓

Health Check

↓

Notification

## Jenkins And Java

A Java pipeline commonly performs:

- Git checkout

- Maven dependency resolution

- Compilation

- Unit testing

- Packaging

- JAR creation

- Artifact publishing

- Application deployment

## Jenkins And AWS

Common AWS integration uses include:

- Jenkins hosted on EC2

- Build agents running on EC2

- Artifacts stored in S3

- Images pushed to ECR

- Applications deployed to ECS or EKS

- CloudWatch monitoring

Avoid hardcoded AWS credentials.

Use approved temporary credentials and least-privilege access.

## Production Jenkins Requirements

A production Jenkins service should consider:

- High availability requirements

- Controller security

- Agent isolation

- Credential protection

- Backup and recovery

- Monitoring

- Disk management

- Plugin governance

- Upgrade planning

- Audit requirements

- Network restrictions

- Build retention

## Jenkins Security Principles

- Use authentication

- Use authorization

- Restrict administrative access

- Use HTTPS

- Restrict network exposure

- Protect credentials

- Avoid untrusted privileged builds

- Keep Jenkins updated

- Review plugins

- Back up configuration

- Apply least privilege

## Jenkins Home Directory

Jenkins stores important operational data under its Jenkins home directory.

The exact path depends on the installation method.

Data may include:

- Job configuration

- Plugin data

- Build information

- System configuration

- Credential metadata

- User configuration

Protect and back up Jenkins home according to the recovery plan.

## Jenkins Is Not An Artifact Repository

Jenkins can archive build artifacts, but long-term binary management may require a dedicated artifact repository or approved storage service.

Examples may include:

- Nexus

- Artifactory

- S3

- Container registry

## Production Design Principle

Use Jenkins to orchestrate delivery.

Do not make Jenkins the permanent storage location for every artifact, credential, log, and deployment dependency.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
