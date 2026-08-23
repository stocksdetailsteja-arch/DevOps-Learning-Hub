# Docker Commands

## Verify Docker

docker --version

## Docker Information

docker info

## Download Image

docker pull nginx

## List Images

docker images

## Build Image

docker build -t myapp:v1 .

## Run Container

docker run -d nginx

## List Running Containers

docker ps

## List All Containers

docker ps -a

## Stop Container

docker stop container_id

## Remove Container

docker rm container_id

## Remove Image

docker rmi image_id

## View Logs

docker logs container_id

## Follow Logs

docker logs -f container_id

## Execute Command

docker exec -it container_id bash

## Container Details

docker inspect container_id

## Resource Usage

docker stats

## Networks

docker network ls

## Volumes

docker volume ls

## Docker Compose

docker compose up -d

docker compose down

docker compose ps

## Push Image

docker push repository/image:tag
