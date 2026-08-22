# Day 07 - Dockerfile Commands

## Create Dockerfile

touch Dockerfile

Screenshot:

01_create_dockerfile.png

## View Dockerfile

cat Dockerfile

Screenshot:

02_view_dockerfile.png

## Build Image

docker build -t myapp:v1 .

Screenshot:

03_build_image.png

## List Images

docker images

Screenshot:

04_list_images.png

## View Build Logs

docker build -t myapp:v1 .

Screenshot:

05_build_logs.png

## Run Image

docker run myapp:v1

Screenshot:

06_run_image.png

## Tag Image

docker tag myapp:v1 myapp:v2

Screenshot:

07_tag_image.png

## Inspect Image

docker image inspect myapp:v1

Screenshot:

08_inspect_image.png

## View Image History

docker history myapp:v1

Screenshot:

09_image_history.png

## Remove Image

docker rmi myapp:v1

Screenshot:

10_remove_image.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
