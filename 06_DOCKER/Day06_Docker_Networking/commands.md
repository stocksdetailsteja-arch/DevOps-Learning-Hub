# Day 06 - Docker Networking Commands

## List Networks

docker network ls

Screenshot:

01_network_list.png

## Inspect Network

docker network inspect bridge

Screenshot:

02_network_inspect.png

## Create Network

docker network create app-network

Screenshot:

03_create_network.png

## Run Container In Network

docker run -d --network app-network nginx

Screenshot:

04_run_network_container.png

## Connect Container To Network

docker network connect app-network CONTAINER_ID

Screenshot:

05_connect_network.png

## Disconnect Container

docker network disconnect app-network CONTAINER_ID

Screenshot:

06_disconnect_network.png

## Remove Network

docker network rm app-network

Screenshot:

07_remove_network.png

## Port Mapping

docker run -d -p 8080:80 nginx

Screenshot:

08_port_mapping.png

## View Network Details

docker network inspect app-network

Screenshot:

09_network_details.png

## Verify Open Ports

docker ps

Screenshot:

10_verify_ports.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
