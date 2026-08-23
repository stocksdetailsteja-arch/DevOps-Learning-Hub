# Docker Troubleshooting Cheatsheet

## Container Not Starting

Check:

docker logs container_id

docker inspect container_id

Verify:

- Entrypoint
- CMD
- Permissions

## Container Restart Loop

Check:

docker logs container_id

Investigate:

- Exit Code
- Application Error
- Memory Issue

## Application Not Accessible

Check:

docker ps

Verify:

- Port Mapping
- Application Port
- Firewall

## Image Pull Failure

Check:

- Internet Access
- Registry Access
- Credentials
- Image Tag

## Volume Not Working

Check:

docker volume ls

docker inspect container_id

Verify Mount Path

## Container Communication Failure

Check:

docker network ls

docker inspect container_id

Verify Network

## Docker Compose Failure

Check:

docker compose logs

Review:

- Dependencies
- Environment Variables
- Syntax

## High CPU Usage

Check:

docker stats

Review:

- Application Processes
- Loops
- Traffic

## High Memory Usage

Check:

docker stats

Investigate:

- Application Leak
- Resource Limits

## Permission Denied

Check:

- 
