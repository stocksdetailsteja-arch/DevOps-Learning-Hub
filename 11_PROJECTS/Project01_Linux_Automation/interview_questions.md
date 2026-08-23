i# Project 01 - Interview Questions

## Beginner Level

### What problem does this project solve?

It automates repetitive Linux server health checks and generates consistent operational results.

### Why did you use Bash?

Bash can combine Linux commands into repeatable administration workflows without requiring an additional runtime.

### What does the script monitor?

- CPU
- Memory
- Disk
- Load
- Nginx
- Network
- Listening port

### Why are exit codes important?

They communicate the result to systemd, Jenkins, Cron wrappers, and other automation.

### Why did you use functions?

Functions separate responsibilities and improve maintainability and testing.

## Intermediate Level

### Why are thresholds stored outside the script?

External configuration allows environments to use different thresholds without changing application logic.

### Why is available memory used?

Linux may use memory for caching, so available memory gives more useful operational context than only reading the free column.

### Why use systemd instead of only Cron?

For this project, systemd provides service supervision, timer-based activation, status inspection, and journal integration.

### What happens when several checks fail?

The script retains the highest-severity exit code and records every failed check.

### Why use absolute installation paths?

Scheduled automation may execute with a different working directory and environment from an interactive shell.

## Advanced Level

### How would you monitor thousands of servers?

I would avoid collecting reports manually from every host.

I would expose or forward standardized metrics to a centralized platform such as Prometheus, CloudWatch, or another enterprise monitoring system.

The local script could remain available for operational diagnostics.

### How would you prevent overlapping runs?

Use an execution lock with flock, a timeout, and a schedule longer than normal execution duration.

### How would you make the project testable?

- Separate metric collection from evaluation
- Allow fixture input
- Add shellcheck
- Add Bats tests
- Mock systemctl and network commands
- Test boundary values
- Test missing dependencies
- Test all exit codes

### How would you handle a command that hangs?

Apply a command timeout, capture the failure, log UNKNOWN, and allow remaining independent checks to continue.

### How would you make output machine-readable?

Add a JSON mode or write Prometheus textfile collector metrics while preserving human-readable logs.

### How would you secure the script?

- Use fixed commands
- Quote variables
- Validate configuration
- Restrict configuration permissions
- Avoid eval
- Avoid secrets
- Use least privilege
- Review changes through Git
- Protect installation directories

### Why can load average be misleading?

Load needs to be interpreted relative to CPU cores and may include work waiting for CPU or uninterruptible operations such as I/O.

### How would you reduce false-positive alerts?

- Use sustained-duration checks
- Tune thresholds using historical behaviour
- Separate warnings from critical alerts
- Consider maintenance windows
- Alert only when action is required
- Correlate related signals

### What would you do if disk usage reaches 100%?

- Identify the affected filesystem
- Check inode exhaustion
- Locate large directories
- Check deleted files held open
- Protect critical services
- Remove only verified safe data
- restore logging
- validate recovery
- implement retention and monitoring

### Explain a production incident using this project.

A scheduled health check detected that Nginx was inactive and port 80 was not listening.

I reviewed systemd status and journal logs, identified the service failure, corrected the root cause, restarted Nginx, validated the endpoint, and confirmed the next health check returned a healthy service result.

### What are the limitations of this project?

- It is host-local
- It does not provide long-term trends
- It does not provide distributed tracing
- It does not replace centralized monitoring
- Ping may be blocked even when other network traffic works
- Thresholds require workload-specific tuning
