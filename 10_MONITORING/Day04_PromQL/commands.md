# Day 04 - PromQL Commands

## Check Target Availability

up

## View CPU Metrics

node_cpu_seconds_total

## View Memory Metrics

node_memory_MemAvailable_bytes

## View Filesystem Metrics

node_filesystem_avail_bytes

## View Network Metrics

node_network_receive_bytes_total

## Calculate Request Rate

rate(http_requests_total[5m])

## Calculate Increase

increase(http_requests_total[5m])

## Average CPU Metric

avg(node_cpu_seconds_total)

## Sum Metric

sum(node_cpu_seconds_total)

## Maximum Value

max(node_cpu_seconds_total)

## Count Targets

count(up)

## Top 5 Results

topk(5,node_cpu_seconds_total)

## Bottom 5 Results

bottomk(5,node_cpu_seconds_total)

## Query By Label

up{job="node_exporter"}

## Query By Instance

up{instance="localhost:9100"}

## Query Memory Usage

100 * (1 - (node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes))

## Query Disk Usage

100 - (
node_filesystem_avail_bytes
/
node_filesystem_size_bytes
* 100
)
