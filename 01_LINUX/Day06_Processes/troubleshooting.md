# Day 06 - Advanced Process Troubleshooting

## Scenario 1 - Production CPU Reaches 100 Percent

### Impact

Application response time increases and requests may time out.

### Investigation

- Run top

- Identify the consuming PID

- Review process command and owner

- Inspect logs

- Check recent deployments

- For Java, collect thread dumps

### Possible Root Causes

- Infinite loop

- Excessive traffic

- Retry storm

- Garbage collection pressure

- Thread contention

- Faulty release

### Immediate Resolution

Reduce impact using an approved restart, scale-out, traffic control, or rollback procedure.

### Permanent Resolution

Fix the application or configuration cause and improve monitoring.

## Scenario 2 - Out Of Memory Event

### Symptoms

- Application terminated unexpectedly

- Kernel OOM message

- Server becomes unresponsive

### Investigation

- free -h

- ps aux --sort=-%mem | head

- Review kernel logs

- Review application memory configuration

### Possible Root Causes

- Memory leak

- Incorrect JVM heap size

- Excessive process count

- Unbounded cache

- Container memory limit

### Prevention

- Configure memory limits

- Monitor memory trends

- Add alerts

- Perform load testing

## Scenario 3 - Process Will Not Terminate

### Investigation

Send SIGTERM.

Confirm process state.

Review logs.

Inspect whether the process is in D state.

Check blocked I/O.

Use SIGKILL only when appropriate.

### Important Note

A process in uninterruptible sleep may remain until the kernel-level operation completes.

## Scenario 4 - Zombie Processes Accumulate

### Symptoms

Process state shows Z.

### Root Cause

Parent process does not collect child exit statuses.

### Investigation

Identify zombie PPIDs.

Inspect the parent application.

### Resolution

Fix or restart the parent process after assessing impact.

Killing the zombie PID directly does not resolve the underlying issue.

## Scenario 5 - Jenkins Build Hangs

### Possible Causes

- Child process waiting indefinitely

- Missing timeout

- Network dependency

- Interactive prompt

- Workspace lock

- Agent issue

### Investigation

Inspect:

- Jenkins console output

- Build agent processes

- Child process tree

- External dependencies

### Permanent Fix

Add pipeline timeouts and reliable cleanup logic.

## Scenario 6 - Docker Container Immediately Stops

### Root Cause Possibilities

- Primary process exits

- Incorrect command

- Application crash

- Missing environment variable

- Permission failure

- Memory limit reached

### Investigation

- Inspect container logs

- Inspect exit code

- Verify command and entrypoint

- Check host resources

- Check restart policy

## Scenario 7 - Kubernetes Pod Restarts Repeatedly

### Investigation

- Review pod status

- Review previous container logs

- Review events

- Check probes

- Check memory and CPU limits

- Check application process exit code

### Possible Causes

- Application crash

- OOMKill

- Failed health probe

- Missing configuration

- Permission issue

- Dependency failure

## Scenario 8 - Process Works Manually But Fails As A Service

### Investigation

Compare:

- User

- Group

- PATH

- Working directory

- Environment variables

- File permissions

- Resource limits

- Security controls

Review systemd journal output and unit configuration.

## Scenario 9 - High Process Count

### Symptoms

- Fork failures

- Resource temporarily unavailable

- Slow system response

### Possible Causes

- Fork bomb

- Application child-process leak

- Excessive worker configuration

- Abandoned processes

### Resolution

Identify the parent process, control the workload, and enforce appropriate limits.

## Scenario 10 - NFS Related D-State Processes

### Symptoms

Processes remain in D state and cannot be killed.

### Investigation

- Check NFS mount availability

- Check network connectivity

- Check storage server health

- Review kernel logs

### Resolution

Recover the storage or network path first.

Do not assume kill -9 can resolve kernel-level blocked I/O.
