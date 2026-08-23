# Project 01 - Troubleshooting

## Issue 1 - Permission Denied

### Symptom

The script cannot be executed.

### Investigation

ls -l scripts/health-check.sh

### Root Cause

Execute permission is missing.

### Resolution

chmod 755 scripts/health-check.sh

### Validation

./scripts/health-check.sh

## Issue 2 - Configuration File Missing

### Symptom

The script returns UNKNOWN.

### Investigation

ls -l /etc/linux-health-check/health-check.conf

### Root Cause

Configuration was not installed or the path is wrong.

### Resolution

Restore the configuration or pass CONFIG_FILE explicitly.

### Validation

Run the script and confirm configuration loads.

## Issue 3 - Invalid Threshold

### Symptom

The script rejects configuration.

### Root Cause

A threshold is not numeric or warning is greater than critical.

### Resolution

Correct the threshold pair.

### Prevention

Review configuration through Git.

## Issue 4 - Health Log Is Not Writable

### Symptom

The script cannot create or update its log.

### Investigation

ls -ld /var/log/linux-health-check

ls -l /var/log/linux-health-check/health-check.log

### Root Cause

Incorrect ownership, permissions, or full filesystem.

### Resolution

Correct the specific permission issue or free verified safe space.

## Issue 5 - Nginx Reported As Critical

### Investigation

systemctl status nginx

journalctl -u nginx -n 100 --no-pager

nginx -t

ss -lntp

### Possible Causes

- Nginx stopped
- Invalid configuration
- Port conflict
- Package issue
- Filesystem full

### Resolution

Correct the confirmed root cause and start Nginx.

## Issue 6 - Port 80 Is Not Listening

### Investigation

ss -lntp

systemctl status nginx

### Possible Causes

- Nginx stopped
- Different listen port configured
- Another process uses port 80
- Configuration did not load

## Issue 7 - Network Check Fails

### Investigation

ip addr

ip route

getent hosts example.com

ping -c 2 8.8.8.8

### Possible Causes

- No route
- Security policy
- Network ACL
- ICMP blocked
- Endpoint unavailable

### Important Note

A failed ping does not always prove that all network connectivity is unavailable.

## Issue 8 - systemd Service Fails

### Investigation

systemctl status linux-health-check.service

journalctl -u linux-health-check.service -n 100 --no-pager

systemd-analyze verify /etc/systemd/system/linux-health-check.service

### Possible Causes

- Wrong ExecStart path
- Missing configuration
- Permission issue
- Invalid script
- Missing command

## Issue 9 - Timer Does Not Execute

### Investigation

systemctl status linux-health-check.timer

systemctl list-timers linux-health-check.timer

journalctl -u linux-health-check.timer

### Possible Causes

- Timer not enabled
- systemd not reloaded
- Unit name mismatch
- Invalid timer configuration

## Issue 10 - Cron Works Manually But Fails Automatically

### Possible Causes

- Different PATH
- Relative paths
- Missing environment variables
- Different user
- Missing permissions

### Prevention

- Use absolute paths
- Log standard output and errors
- Define required environment explicitly
- Test under the scheduled user

## Production Scenario 1 - Disk Is Full But Cleanup Fails

### Investigation

df -h

df -i

sudo du -xhd1 /var | sort -h

sudo lsof +L1

### Possible Root Causes

- Large active logs
- Deleted files still held open
- Inode exhaustion
- Package cache
- Application dump files

### Safe Response

Do not delete files blindly.

Identify ownership, retention requirements, and application impact first.

## Production Scenario 2 - CPU Is High But No Single Process Appears Responsible

### Investigation

top

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu

vmstat 1

iostat -xz 1

### Possible Causes

- Short-lived processes
- I/O wait
- Many medium consumers
- Kernel activity
- Container workload

## Production Scenario 3 - Memory Alert Persists After Process Restart

### Possible Causes

- Multiple affected processes
- Cache interpretation
- Swap pressure
- Memory leak in another service
- Restart did not complete

### Investigation

free -h

ps aux --sort=-%mem

journalctl -k

## Production Scenario 4 - Health Check Creates Alert Noise

### Root Cause

Thresholds are not aligned with workload behaviour.

### Resolution

- Review metric history
- Add sustained-duration logic
- Separate warning and critical levels
- Remove checks that are not actionable
- Document threshold justification

## Production Scenario 5 - Script Works On Ubuntu But Fails On Another Distribution

### Possible Causes

- Package differences
- Command output differences
- Service naming differences
- Shell differences
- systemd unavailable

### Prevention

- Detect operating system
- Validate commands
- Test supported distributions
- Document compatibility

## Production Scenario 6 - Concurrent Executions Corrupt Logs

### Root Cause

A previous execution is still running when the next starts.

### Improvement

Implement a lock using flock and ensure the timer interval is greater than normal execution duration.

## Production Scenario 7 - Health Check Itself Becomes Expensive

### Root Cause

Commands are executed too frequently or inspect excessive data.

### Resolution

- Reduce frequency
- Use targeted commands
- Add command timeouts
- Measure execution duration
- Avoid recursive scans during routine checks
