# Docker Troubleshooting

## Scenario 1

Container Exits Immediately

Check:

docker logs

## Scenario 2

Port Not Reachable

Check:

docker ps

ss -tulpn

## Scenario 3

Database Connection Failure

Check:

docker network ls

docker network inspect

## Scenario 4

Volume Data Missing

Check:

docker volume ls

docker volume inspect

## Scenario 5

Image Build Failure

Check:

Dockerfile
Build Logs

## Scenario 6

Health Check Failure

Check:

Application Logs
Endpoint Status

## Scenario 7

Container Restart Loop

Check:

docker logs

docker inspect

## Scenario 8

High Container CPU Usage

Check:

docker stats

top

## Scenario 9

Image Push Failure

Check:

docker login

Repository Access
