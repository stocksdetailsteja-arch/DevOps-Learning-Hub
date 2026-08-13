# Day 07 - Networking Summary

## Topics Covered

- Network interfaces

- IP addressing

- Public and private IPs

- Subnets

- Default gateway

- Routing

- DNS

- TCP

- UDP

- Ports

- Listening sockets

- Connectivity troubleshooting

## Commands Learned

- ip addr

- ip link

- ip route

- hostname

- hostname -I

- ping

- traceroute

- tracepath

- nslookup

- dig

- getent

- curl

- ss

- netstat

- lsof

- nc

- resolvectl

## Common Ports

- 22 = SSH

- 53 = DNS

- 80 = HTTP

- 443 = HTTPS

- 3306 = MySQL

- 5432 = PostgreSQL

- 8080 = Common application or alternative HTTP port

## TCP And UDP

TCP:

- Connection-oriented

- Reliable and ordered delivery

UDP:

- Connectionless

- Lower protocol overhead

- No equivalent delivery guarantee

## DNS Resolution Summary

Application

↓

Operating system resolver

↓

Configured DNS resolver

↓

DNS answer

↓

Destination IP

## Troubleshooting Order

Confirm destination and port

Confirm DNS

Confirm IP and interface

Confirm route

Test port connectivity

Confirm service listening state

Check firewall and cloud rules

Confirm application response

Review logs

Check recent changes

## Production Notes

- Ping failure does not prove application failure.

- Listening port does not prove application health.

- localhost binding can prevent remote access.

- DNS and network reachability are separate checks.

- Cloud networking and Linux networking must both be validated.

- Always record source, destination, port, protocol, and timestamps during incidents.
