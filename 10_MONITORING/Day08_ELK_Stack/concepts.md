# Day 08 - ELK Stack Concepts

## What Is ELK Stack?

ELK Stack is a centralized logging platform.

It consists of:

- Elasticsearch
- Logstash
- Kibana

## Why Centralized Logging?

Without centralized logging:

- Logs exist on multiple servers
- Troubleshooting becomes difficult
- Root cause analysis takes longer

With centralized logging:

- Single source of truth
- Faster troubleshooting
- Easier searching
- Incident correlation

## ELK Architecture

Application Logs

↓

Logstash

↓

Elasticsearch

↓

Kibana

↓

Operations Team

## Elasticsearch

Elasticsearch is a distributed search and analytics engine.

Functions:

- Store Logs
- Index Logs
- Search Logs
- Analyze Data

It stores data as JSON documents. 【1-ac61b6】【2-76d066】

## Logstash

Logstash is a data processing pipeline.

Functions:

- Collect Data
- Parse Logs
- Transform Logs
- Forward Data

Logstash accepts logs from multiple sources and sends them to Elasticsearch. 【2-76d066】【1-ac61b6】

## Kibana

Kibana is the visualization layer.

Functions:

- Search Logs
- Create Dashboards
- Build Visualizations
- Investigate Incidents

Kibana provides a user interface for Elasticsearch data. 【2-76d066】【1-ac61b6】

## Log Indexing

Before searching, logs are indexed.

Benefits:

- Fast Searches
- Fast Analytics
- Better Performance

## Log Correlation

Multiple logs can be linked together.

Examples:

- Error Logs
- Access Logs
- Application Logs

## Benefits

- Centralized Logging
- Faster Root Cause Analysis
- Improved Operations
- Better Visibility
