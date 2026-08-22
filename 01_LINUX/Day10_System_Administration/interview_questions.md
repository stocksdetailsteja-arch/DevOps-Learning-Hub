# Day 10 Interview Questions

## Basic

### Q1 What is System Administration?

System Administration is the management and maintenance of Linux systems.

### Q2 Which command shows system uptime?

uptime

### Q3 Which command displays memory usage?

free -h

## Intermediate

### Q1 Difference between df and du?

df

Displays filesystem usage.

du

Displays directory size.

### Q2 Difference between service and process?

Service:

Managed application.

Process:

Running program instance.

## Advanced (5+ Years)

### Q1 Production Linux Server Is Slow. How Do You Investigate?

Answer:

uptime

top

free -h

vmstat

df -h

journalctl

Identify bottleneck

Investigate RCA

Validate recovery

### Q2 Disk Usage Reaches 100 Percent. How Do You Troubleshoot?

Answer:

- Check:

df -h

- Find large directories:

du -sh /*

- Review logs

- Remove unnecessary data

- Implement log rotation

### Q3 Jenkins Service Is Down. Investigation Steps?

Answer:

systemctl status jenkins

journalctl -u jenkins

Verify Java

Verify ports

Check memory

Restart if necessary

### Q4 How Do You Investigate High Load Average?

Answer:

uptime

top

vmstat

ps -ef

Review CPU

Review I/O

Review application activity

### Q5 What Evidence Should Be Collected During A Production Incident?

Answer:

- Logs

- CPU Metrics

- Memory Metrics

- Service Status

- Recent Deployments

- System Events

- Network Status
