# Docker Commands Cheat Sheet

## Check Docker Version

docker --version

## Docker Information

docker info

## Pull Image

docker pull nginx

## List Images

docker images

## Build Image

docker build -t app:v1 .

## Run Container

docker run -d nginx

## Run Container With Port

docker run -d -p 8080:80 nginx

## List Running Containers

docker ps

## List All Containers

docker ps -a

## Stop Container

docker stop container_id

## Start Container

docker start container_id

## Restart Container

docker restart container_id

## Remove Container

docker rm container_id

## Remove Image

docker rmi image_id

## View Logs

docker logs container_id

## Follow Logs

docker logs -f container_id

## Execute Inside Container

docker exec -it container_id bash

## Inspect Container

docker inspect container_id

## Resource Usage

docker stats

## Networks

docker network ls

docker network inspect bridge

## Volumes

docker volume ls

docker volume inspect volume_name

## Docker Compose

docker compose up -d

docker compose down

docker compose ps

docker compose logs

## Push Image

docker push username/image:v1

## Pull Image

docker pull username/image:v1
