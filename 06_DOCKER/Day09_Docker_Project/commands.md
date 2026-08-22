# Day 09 - Docker Project Commands

## Create Project Directory

mkdir docker-project

cd docker-project

Screenshot:

01_project_directory.png

## Create Dockerfile

touch Dockerfile

Screenshot:

02_create_dockerfile.png

## Build Docker Image

docker build -t project-app:v1 .

Screenshot:

03_build_image.png

## Verify Image

docker images

Screenshot:

04_verify_image.png

## Run Container

docker run -d project-app:v1

Screenshot:

05_run_container.png

## Verify Running Containers

docker ps

Screenshot:

06_running_container.png

## View Logs

docker logs CONTAINER_ID

Screenshot:

07_container_logs.png

## Inspect Container

docker inspect CONTAINER_ID

Screenshot:

08_container_inspect.png

## Verify Network

docker network ls

Screenshot:

09_network_validation.png

## Validate Application

curl localhost

Screenshot:

10_application_validation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
