# Day 05 - Docker Volumes Commands

## Create Volume

docker volume create my-volume

Screenshot:

01_create_volume.png

## List Volumes

docker volume ls

Screenshot:

02_list_volumes.png

## Inspect Volume

docker volume inspect my-volume

Screenshot:

03_inspect_volume.png

## Run Container With Volume

docker run -d -v my-volume:/data nginx

Screenshot:

04_container_with_volume.png

## Create Bind Mount

docker run -d -v /home/ubuntu/data:/data nginx

Screenshot:

05_bind_mount.png

## View Volume Usage

docker inspect CONTAINER_ID

Screenshot:

06_volume_usage.png

## Remove Volume

docker volume rm my-volume

Screenshot:

07_remove_volume.png

## Remove Unused Volumes

docker volume prune

Screenshot:

08_volume_prune.png

## View Docker Disk Usage

docker system df

Screenshot:

09_system_df.png

## View Volume Directory

docker volume inspect my-volume

Screenshot:

10_volume_details.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
