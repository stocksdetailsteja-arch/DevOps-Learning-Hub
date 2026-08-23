# Day 04 - Interview Questions

## Beginner Level

### What is PromQL?

PromQL is Prometheus Query Language used to query time-series metrics. 【1-734b79】【2-69df66】

### What is an Instant Vector?

Returns current metric values.

### What is a Range Vector?

Returns metric values over a time range.

### Why are Labels important?

Labels allow filtering and grouping of metrics.

### What is rate()?

Calculates how fast a counter changes over time.

## Intermediate Level

### Difference between rate() and increase()?

rate()

Returns per-second rate.

increase()

Returns total increase.

### What is topk()?

Returns highest values.

### What is sum()?

Aggregates values across metrics.

### How do you filter metrics?

Using label selectors.

### Why use aggregation?

To summarize large datasets.

## Advanced Level (5+ Years)

### Explain high-cardinality issues.

Too many unique labels generate excessive time-series and increase memory consumption.

### What are common PromQL optimization practices?

- Use meaningful labels
- Avoid unnecessary regex
- Reduce cardinality
- Aggregate efficiently

### How do you create CPU Utilization alerts?

Using PromQL expressions combined with Alert Rules.

### How do you identify top resource-consuming servers?

Using:

topk()

queries.

### Explain a production troubleshooting case.

API latency increased.

PromQL showed:

- Increased request duration
- Increased error rate
- Normal CPU usage

Root cause was slow database queries.
