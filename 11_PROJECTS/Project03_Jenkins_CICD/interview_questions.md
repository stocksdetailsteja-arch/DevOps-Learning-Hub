### Explain Jenkins Controller And Agent Architecture.

Controller manages pipeline execution.

Agents perform actual build work.

### Why Use Jenkinsfile?

Provides pipeline-as-code and version control.

### How Are Secrets Managed?

Store secrets in Jenkins Credentials.

Never hardcode passwords or tokens. 【7-149978】【8-e68637】

### What Is A Webhook?

An event notification from GitHub that automatically triggers Jenkins builds. 【5-a9099a】【6-7c1b5b】

### Explain CI Vs CD.

CI:

Code integration and testing.

CD:

Deployment automation.

### Explain A Real Production Failure.

Pipeline failed during deployment.

Investigation:

- Build successful
- Tests successful
- Deployment script failed

Root Cause:

Target server lacked required permissions.

Resolution:

Fixed deployment account permissions and reran deployment.

### Pipeline Is Stuck In Queue. What Will You Check?

- Agent availability
- Executor availability
- Labels
- Jenkins resources
- Pending approvals

These are explicitly called out in the advanced Jenkins troubleshooting guidance. 【4-dcfcd0】
