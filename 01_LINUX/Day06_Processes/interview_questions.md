# Day 06 - Process Interview Questions And Answers

## Basic Questions

### Q1. What Is A Process?

A process is a running instance of a program with allocated system resources and a unique PID.

### Q2. What Is PID?

PID is the unique Process ID assigned by Linux.

### Q3. What Is PPID?

PPID is the Process ID of the parent process.

### Q4. What Is A Background Process?

A background process runs without blocking the terminal.

### Q5. What Is A Daemon?

A daemon is a long-running background process that provides a service.

## Intermediate Questions

### Q1. What Is The Difference Between ps -ef And ps aux?

ps -ef uses a System V style full-format listing.

ps aux uses BSD-style options and includes CPU and memory columns.

Both can display system-wide processes, but their columns and formats differ.

### Q2. What Is The Difference Between SIGTERM And SIGKILL?

SIGTERM requests graceful shutdown.

SIGKILL forces immediate termination and cannot be handled or ignored by the target process.

### Q3. What Is A Zombie Process?

A zombie is a completed child process whose parent has not collected its exit status.

### Q4. What Is An Orphan Process?

An orphan is a running child process whose parent has exited.

The orphan is normally adopted by PID 1.

### Q5. What Is The Difference Between nice And renice?

nice starts a new process with a selected nice value.

renice changes the nice value of an existing process.

## Advanced Questions For 5+ Years Experience

### Q1. A Production Server Shows 100 Percent CPU. How Do You Investigate?

Confirm system load using top or uptime.

Identify the top CPU process.

Record PID, PPID, user, command, and elapsed time.

Determine whether the process is expected.

Inspect application and service logs.

Check recent deployments and configuration changes.

For a JVM, collect thread dumps and inspect garbage collection behavior.

Check whether the high CPU represents traffic, an infinite loop, excessive retries, or thread contention.

Avoid immediately killing the process unless service impact requires emergency action.

Validate recovery and document the root cause.

### Q2. A Process Respawns Immediately After kill -9. Why?

A service manager, container runtime, Kubernetes controller, supervisor, cron job, or watchdog may be restarting the process.

Investigation includes:

- Check PPID

- Check systemd unit status

- Check Docker or Kubernetes configuration

- Check restart policies

- Check cron and supervisor configuration

The correct fix is to stop or update the controlling mechanism rather than repeatedly killing the child process.

### Q3. How Do You Troubleshoot A JVM Consuming High Memory?

Confirm JVM memory use through process monitoring.

Distinguish virtual memory from resident memory.

Review JVM heap settings.

Check garbage collection logs.

Capture a heap dump if approved.

Inspect thread count and native memory.

Correlate memory growth with application traffic and recent changes.

Determine whether the issue is heap leakage, cache growth, off-heap memory, thread leakage, or expected workload.

Restart only with a recovery and evidence-capture plan.

### Q4. A Jenkins Job Is Stuck For Several Hours. What Do You Check?

- Jenkins build console output

- Agent availability

- Child processes started by the build

- Waiting input or approval step

- Network calls

- File locks

- Test timeouts

- Workspace access

- Process tree below the Jenkins agent

A production-grade fix includes stage-level timeouts, cleanup handling, and termination of abandoned child processes.

### Q5. Why Is kill -9 Dangerous In Production?

SIGKILL prevents graceful shutdown.

Possible impact includes:

- Incomplete transactions

- Corrupted files

- Unreleased locks

- Temporary files remaining

- Interrupted writes

- Missing application shutdown logs

SIGTERM should normally be attempted first.

### Q6. How Do You Troubleshoot A Process In D State?

D normally represents uninterruptible sleep, often associated with kernel-level I/O waits.

Investigate:

- Disk latency

- NFS connectivity

- Storage-path health

- Kernel logs

- Filesystem state

- Blocked device operations

SIGKILL may not terminate a process in D state until the kernel operation returns.

### Q7. How Does Process Management Differ Inside Containers?

Containers use host kernel processes with namespace isolation.

Important checks include:

- Container PID namespace

- Primary process behavior

- Signal forwarding

- Restart policies

- Resource limits

- Host versus container PID view

If PID 1 inside a container does not handle signals or reap child processes correctly, shutdown and zombie-process problems may occur.

### Q8. How Do Kubernetes Probes Relate To Processes?

Probes determine workload health from the Kubernetes perspective.

A running process may still be unavailable or unhealthy.

Liveness, readiness, and startup checks should represent actual application behavior rather than only checking whether a PID exists.

### Q9. A Service Works Manually But Fails Under systemd. Why?

Possible reasons include:

- Different user

- Different environment variables

- Different working directory

- Restricted PATH

- Missing permissions

- Resource limits

- Dependency ordering

- Security controls

Compare manual execution conditions with the systemd unit configuration and service logs.

### Q10. What Evidence Should Be Collected Before Restarting A Failed Production Process?

- Process list

- PID and PPID

- CPU and memory metrics

- Open files if relevant

- Application logs

- Service logs

- Thread or heap diagnostics where applicable

- Recent deployment details

- Configuration changes

- System and kernel logs

- Time of impact

Evidence should be collected before restart whenever operational conditions allow.
