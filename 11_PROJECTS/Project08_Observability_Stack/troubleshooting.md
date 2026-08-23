# Troubleshooting

## Scenario 1

Prometheus Target Down

Check:

- Exporter
- Firewall
- Network

## Scenario 2

Metrics Missing

Check:

- Scrape Config
- Target Status

## Scenario 3

Grafana Dashboard Empty

Check:

- Data Source
- Query

## Scenario 4

Alert Not Triggering

Check:

- Alert Rule
- Expression
- Threshold

## Scenario 5

Alertmanager Not Sending Alerts

Check:

- Receiver
- Route
- Notification Backend

## Scenario 6

Node Exporter Unreachable

Check:

- Service Status
- Port 9100
- Firewall

## Production Scenario

Monitoring Working But Incident Not Detected

Investigation:

- Missing Metric
- Incorrect Threshold
- Disabled Alert

Resolution:

Review Monitoring Coverage
