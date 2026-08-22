# Day 10 - Real World Docker Project Commands

## Build Application Image

docker build -t springboot-app:v1 .

Screenshot:

01_build_image.png

## View Images

docker images

Screenshot:

02_images.png

## Run Application Container

docker run -d springboot-app:v1

Screenshot:

03_run_container.png

## Create Compose Stack

docker compose up -d

Screenshot:

04_compose_stack.png

## Verify Running Containers

docker ps

Screenshot:

05_running_containers.png

## View Logs

docker logs CONTAINER_ID

Screenshot:

06_logs.png

## Inspect Container

docker inspect CONTAINER_ID

Screenshot:

07_inspect_container.png

## View Resource Utilization

docker stats

Screenshot:

08_docker_stats.png

## Validate Application

curl localhost:8080

Screenshot:

09_application_validation.png

## Shutdown Stack

docker compose down

Screenshot:

10_compose_down.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
