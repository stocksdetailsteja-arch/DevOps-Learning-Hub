# Day 08 - Interview Questions

## Basic

### Q1 What is grep?

A pattern searching utility.

### Q2 What is awk?

A text processing and field extraction utility.

### Q3 What is sed?

A stream editor for modifying text.

## Intermediate

### Q1 Difference Between grep and awk?

grep:

Searches patterns.

awk:

Processes columns and fields.

### Q2 Why use tail -f?

Monitor log files in real time.

## Advanced (5+ Years)

### Q1 Production Application Is Down. How Do You Investigate Logs?

Answer:

Check latest logs

tail -f app.log

Find errors

grep ERROR app.log

Filter timestamps

Correlate events

Perform RCA

### Q2 How would you find top recurring errors?

Answer:

grep ERROR app.log | sort | uniq -c | sort -nr

### Q3 Explain a real-world use case of awk.

Answer:

Extract:

- IPs

- Usernames

- CPU Usage

- Memory Usage

from production reports.

### Q4 Jenkins Build Logs Are Huge. How Would You Investigate?

Answer:

grep FAILURE build.log

awk

tail

head

Filter only required information.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
