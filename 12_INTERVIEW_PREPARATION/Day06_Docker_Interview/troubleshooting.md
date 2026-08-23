# Troubleshooting

## Scenario 1

Container Not Starting

Check:

docker logs

docker inspect

Check:

- Entrypoint
- CMD
- Permissions

## Scenario 2

Application Not Accessible

Check:

docker ps

Verify:

- Port Mapping
- Container Status
- Firewall

## Scenario 3

Container Crash Loop

Check:

docker logs

Check:

- Memory
- Startup Errors
- Missing Dependencies

## Scenario 4

Image Pull Failure

Check:

- Internet Access
- Registry Access
- Authentication

## Scenario 5

Volume Not Persisting

Check:

docker volume ls

Verify Mount Path

## Scenario 6

Network Communication Failure

Check:

docker network ls

docker inspect

Verify Container Network

## Scenario 7

Docker Compose Failure

Check:

docker compose logs

Verify:

- Syntax
- Service Dependencies
- Environment Variables

## Scenario 8

High Resource Usage

Check:

docker stats

Investigate:

- CPU
- Memory
- Network

## Scenario 9

Permission Denied

Check:

- File Ownership
- User Mapping
- Docker Group

## Production Incident

Issue:

Application Down After Deployment

Investigation:

1. Container State
2. Container Logs
3. Image Version
4. Health Check
5. Network Connectivity
6. Resource Utilization

Root Cause:

Incorrect Environment Variable

Resolution:

Update Configuration

Redeploy Container

Validation:

Application Healthy
