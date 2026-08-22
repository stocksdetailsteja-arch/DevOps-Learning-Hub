# Day 01 - Jenkins Introduction Interview Questions And Answers

## Basic Questions

### Q1. What Is Jenkins?

Jenkins is an open-source automation server that can automate software build, testing, delivery, and deployment tasks.

### Q2. What Is Continuous Integration?

Continuous Integration is the practice of frequently integrating code changes and automatically validating those changes through build and test activities.

### Q3. What Is Continuous Delivery?

Continuous Delivery keeps software in a deployable state through automated build, testing, packaging, and validation.

Production deployment may still require approval.

### Q4. What Is Continuous Deployment?

Continuous Deployment automatically releases validated changes to production without a mandatory manual deployment approval.

### Q5. What Is A Jenkins Job?

A Jenkins job defines automated work such as building, testing, packaging, or deploying software.

### Q6. What Is A Jenkins Build?

A Jenkins build is one execution of a job or pipeline.

### Q7. What Is A Jenkins Plugin?

A plugin extends Jenkins functionality.

Jenkins officially describes its functionality as extensible through plugins.

## Intermediate Questions

### Q1. What Is The Difference Between Continuous Delivery And Continuous Deployment?

Continuous Delivery prepares validated software for release but may retain a manual production approval.

Continuous Deployment automatically releases validated changes to production.

### Q2. What Is The Jenkins Controller?

The controller manages Jenkins configuration, jobs, build scheduling, queues, agents, credentials, plugins, and results.

### Q3. What Is A Jenkins Agent?

An agent is an execution environment used to perform work assigned by the controller.

### Q4. What Is An Executor?

An executor is an execution slot on a Jenkins node.

### Q5. What Is A Workspace?

A workspace is the filesystem location where Jenkins performs job operations.

### Q6. What Is Pipeline As Code?

Pipeline as Code stores pipeline logic in a version-controlled file.

### Q7. What Is A Jenkinsfile?

A Jenkinsfile is a text file containing a Jenkins Pipeline definition and is normally stored in source control.

### Q8. What Is The Difference Between Declarative And Scripted Pipeline?

Declarative Pipeline provides structured syntax designed for readability and standardization.

Scripted Pipeline provides flexible code-oriented behavior.

Jenkins documentation recognizes both Declarative and Scripted Jenkinsfile syntax.

## Advanced Questions For 5+ Years Experience

### Q1. Explain A Production Jenkins Architecture.

A production-oriented design can include:

A secured controller

Dedicated agents

Source-control integration

Credentials management

Artifact storage

Monitoring

Backups

Role-based authorization

Network restrictions

Upgrade and recovery procedures

The controller should coordinate work, while resource-heavy builds should be assigned to suitable agents.

### Q2. Why Should Heavy Builds Not Run On The Jenkins Controller?

Heavy builds can consume controller CPU, memory, disk, and executors.

Possible effects include:

- Slow user interface

- Delayed scheduling

- Growing build queue

- Controller instability

- Increased recovery risk

Dedicated agents improve workload isolation.

### Q3. How Would You Secure Jenkins On AWS?

- Place Jenkins behind controlled network access

- Restrict the Security Group

- Use HTTPS

- Use strong authentication

- Apply role-based authorization

- Use an EC2 IAM role instead of hardcoded AWS keys

- Protect Jenkins home

- Back up configuration

- Monitor access and system health

- Keep Jenkins and plugins updated

### Q4. A Pipeline Works Manually But Fails In Jenkins. What Do You Check?

Jenkins runtime user

PATH

Environment variables

Working directory

File permissions

Tool installation

Credentials scope

Agent label

Shell differences

Network access

Proxy settings

Console output

The interactive user environment must not be assumed to match the Jenkins runtime environment.

### Q5. How Do You Prevent Secrets From Appearing In Jenkins Logs?

- Store secrets in Jenkins credentials or an approved secret manager

- Bind credentials only to required steps

- Avoid echoing secret values

- Avoid unrestricted shell tracing

- Mask supported credentials

- Restrict credential scope

- Review logs before sharing

- Rotate exposed credentials immediately

### Q6. What Happens When A Developer Pushes Code To GitHub?

A typical flow is:

GitHub receives the commit

A webhook or configured trigger notifies Jenkins

Jenkins schedules the pipeline

An agent checks out the code

Build and tests run

An artifact is created

Deployment may run

Health validation runs

Results are reported

The exact stages depend on the configured Jenkinsfile.

### Q7. How Do You Troubleshoot A Growing Jenkins Build Queue?

Check:

- Agent availability

- Executor availability

- Node labels

- Offline nodes

- Long-running jobs

- Stuck builds

- Resource constraints

- Queue blockage

- Concurrency configuration

- Cloud-agent provisioning

Adding executors without analyzing capacity can make the problem worse.

### Q8. How Do You Back Up Jenkins?

A backup plan should consider:

- Jenkins home

- Job configurations

- System configuration

- Plugin list and versions

- Credentials configuration

- Shared libraries

- Build metadata where required

- Encryption and access controls

The restore procedure must be tested.

### Q9. How Would You Upgrade Jenkins Safely?

Review compatibility information

Review Java requirements

Review plugin compatibility

Back up Jenkins home

Test in a non-production environment

Define rollback

Schedule approved maintenance

Upgrade

Validate jobs, agents, credentials, and integrations

Monitor after upgrade

### Q10. What Is A Multibranch Pipeline?

A Multibranch Pipeline discovers branches containing a Jenkinsfile and creates pipeline executions based on branch configuration.

Jenkins Pipeline documentation highlights support for branches and pull requests through source-controlled Jenkinsfiles.

### Q11. How Do You Design A Reliable Deployment Pipeline?

A reliable design includes:

- Input validation

- Source revision identification

- Repeatable builds

- Automated tests

- Artifact versioning

- Environment-specific configuration

- Approval where required

- Deployment timeout

- Health checks

- Monitoring

- Rollback

- Notification

- Audit history

### Q12. Jenkins Reports Success But The Application Is Unavailable. What Failed?

The pipeline validated command completion but did not validate application health.

Improvements include:

- Health endpoint validation

- Port checks

- Application-log review

- Readiness validation

- Timeout and retry limits

- Automated rollback

- Post-deployment monitoring

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
