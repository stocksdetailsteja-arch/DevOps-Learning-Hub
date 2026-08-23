# Docker Commands

## Verify Docker

docker version

docker info

## Build Image

docker build -t springboot-api:v1 .

## View Images

docker images

## Run Container

docker run -d -p 8080:8080 springboot-api:v1

## View Containers

docker ps

docker ps -a

## View Logs

docker logs <container_id>

## Enter Container

docker exec -it <container_id> bash

## Stop Container

docker stop <container_id>

## Remove Container

docker rm <container_id>

## Remove Image

docker rmi springboot-api:v1

## Create Network

docker network create devops-network

## View Networks

docker network ls

## View Volumes

docker volume ls

## Docker Compose Start

docker compose up -d

## Docker Compose Stop

docker compose down

## Docker Compose Logs

docker compose logs

## Tag Image

docker tag springboot-api:v1 username/springboot-api:v1

## Push Image

docker push username/springboot-api:v1
