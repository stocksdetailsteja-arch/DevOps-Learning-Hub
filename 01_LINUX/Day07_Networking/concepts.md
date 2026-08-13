# Day 07 - Linux Networking Concepts

## What Is Networking?

Networking is the process of connecting systems so that applications, services, users, and devices can exchange data.

A communication path normally involves:

Source application

Source operating system

Source network interface

Network devices and routes

Destination network interface

Destination operating system

Destination application

## Network Interface

A network interface connects a system to a network.

Examples include:

- Ethernet interfaces

- Wireless interfaces

- Loopback interfaces

- Virtual interfaces

- Docker bridge interfaces

- Kubernetes-related virtual interfaces

Linux commonly displays interface names such as:

- lo

- eth0

- ens5

- enp0s3

The actual name depends on the operating system and environment.

## Loopback Interface

The loopback interface is used for communication within the same machine.

Common loopback address:

127.0.0.1

Common hostname:

localhost

An application may work through localhost while remaining inaccessible remotely if the application listens only on the loopback interface.

## IPv4

IPv4 uses 32-bit addresses.

Example:

192.168.1.10

Common private IPv4 ranges include:

- 10.0.0.0/8

- 172.16.0.0/12

- 192.168.0.0/16

Private addresses are normally used inside internal networks and require translation or routing for internet access.

## IPv6

IPv6 uses 128-bit addresses.

IPv6 was introduced to provide a much larger address space and additional networking improvements.

Example format:

2001:db8::1

## Public And Private IP Addresses

A private IP address is used inside a private network.

A public IP address is routable through the internet when networking and firewall rules permit access.

In AWS, an EC2 instance can have:

- A private IP used within the VPC

- A public IPv4 address or Elastic IP for public connectivity

## Subnet Mask And CIDR

A subnet mask separates the network portion from the host portion of an IP address.

CIDR notation represents the network prefix length.

Example:

192.168.1.0/24

The /24 prefix means the first 24 bits identify the network.

## Default Gateway

A default gateway is the router used when the destination is outside the local network.

If an appropriate route does not exist, traffic normally follows the default route.

Linux routing information can be inspected using:

ip route

## What Is DNS?

DNS means Domain Name System.

DNS translates names into IP addresses.

Example:

github.com

↓

IP address

A simplified DNS flow is:

Application requests a hostname

Operating system checks local configuration and cache

Request is sent to a configured resolver

Resolver finds or retrieves the answer

IP address is returned

Application connects to the destination IP

## What Is A Port?

A port identifies a network service on a host.

An IP address identifies the system.

A port identifies the application or service.

Examples:

- 22 = SSH

- 53 = DNS

- 80 = HTTP

- 443 = HTTPS

- 3306 = MySQL

- 5432 = PostgreSQL

- 8080 = Common alternative HTTP or application port

Port availability does not automatically prove application health. A service may listen on a port while returning errors.

## What Is TCP?

TCP is a connection-oriented transport protocol.

TCP provides:

- Connection establishment

- Reliable delivery

- Ordered delivery

- Retransmission

- Flow control

TCP is commonly used by:

- SSH

- HTTP

- HTTPS

- Database connections

## TCP Three-Way Handshake

The basic TCP connection-establishment sequence is:

Client sends SYN

Server sends SYN-ACK

Client sends ACK

A failure at this stage can be caused by:

- No route

- Firewall rejection

- Security Group restriction

- Service not listening

- Incorrect address or port

## What Is UDP?

UDP is a connectionless transport protocol.

UDP does not provide the same delivery guarantees as TCP.

UDP is commonly used where low overhead or fast transmission is important.

DNS commonly uses UDP for many queries, although DNS can also use TCP.

## Socket

A socket is a communication endpoint.

A network socket is commonly represented using:

IP address + Port + Protocol

Example:

0.0.0.0:22/TCP

This indicates that the service is listening on TCP port 22 across available IPv4 interfaces.

## Listening Address Importance

Examples:

127.0.0.1:8080

The service is available only locally.

0.0.0.0:8080

The service listens on all IPv4 interfaces.

A common production incident occurs when an application listens on localhost instead of the expected network interface.

## OSI Model

The OSI model contains seven layers:

Physical

Data Link

Network

Transport

Session

Presentation

Application

Useful troubleshooting mapping:

- Layer 3: IP and routing

- Layer 4: TCP, UDP, and ports

- Layer 7: HTTP, DNS, and application behavior

## TCP/IP Model

The TCP/IP model is commonly represented using four layers:

Network Access

Internet

Transport

Application

Examples:

- Internet layer: IP

- Transport layer: TCP and UDP

- Application layer: HTTP, HTTPS, SSH, DNS

## DevOps Networking Examples

Jenkins

Jenkins must reach source-control systems, agents, artifact repositories, and deployment targets.

Docker

Containers communicate through bridge networks, port mappings, and host interfaces.

Kubernetes

Pods, Services, DNS, Ingress, and network policies depend on cluster networking.

AWS

VPCs, subnets, route tables, gateways, Security Groups, NACLs, load balancers, and DNS determine connectivity.

## Production Troubleshooting Principle

Always test networking layer by layer:

Confirm the destination name and port

Confirm DNS resolution

Confirm local interface configuration

Confirm route selection

Confirm port reachability

Confirm service listening state

Confirm firewall and cloud rules

Confirm application-layer response

Review logs and recent changes
