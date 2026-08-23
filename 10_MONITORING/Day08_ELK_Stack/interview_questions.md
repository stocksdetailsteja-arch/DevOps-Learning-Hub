# Day 08 - Interview Questions

## Beginner Level

### What is ELK Stack?

ELK stands for:

- Elasticsearch
- Logstash
- Kibana

### What is Elasticsearch?

A distributed search and analytics engine. 【2-76d066】【1-ac61b6】

### What is Logstash?

A log ingestion and transformation pipeline. 【2-76d066】【1-ac61b6】

### What is Kibana?

A visualization and search interface for Elasticsearch. 【2-76d066】【1-ac61b6】

### Why use ELK?

For centralized logging and log analysis.

## Intermediate Level

### Explain ELK Architecture.

Application

↓

Logstash

↓

Elasticsearch

↓

Kibana

### Why is centralized logging important?

It simplifies troubleshooting and incident investigation.

### What are Indexes?

Structures used to store and organize Elasticsearch data.

### How does Kibana help DevOps teams?

Provides dashboards, visualizations, and search capabilities.

### What is log parsing?

Converting raw logs into structured data.

## Advanced Level (5+ Years)

### Explain a production logging architecture.

Applications

↓

Filebeat

↓

Logstash

↓

Elasticsearch

↓

Kibana

↓

Operations Team

### How do you handle large logging volumes?

- Index Management
- Retention Policies
- Log Filtering
- Cluster Scaling

### What is a hot-warm logging architecture?

Frequently accessed logs remain on fast storage while older logs move to cheaper storage.

### How do you reduce Elasticsearch storage costs?

- Lifecycle Management
- Index Rotation
- Compression
- Log Retention Policies

### Explain a real-world incident.

Application response time increased.

Kibana log search showed repeated database timeout exceptions.

The root cause was a database connection pool exhaustion issue.

### Why is ELK important for DevOps?

Because troubleshooting production incidents without centralized logs is extremely difficult.
