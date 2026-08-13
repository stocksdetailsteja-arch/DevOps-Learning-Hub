# Day 07 - Networking Lab Notes

## Lab Objective

Practice Linux networking commands and learn a structured method for investigating connectivity issues.

## Practice Directory

PRACTISE_SESSION/Day07_Networking_Lab

## Commands Executed

- ip addr

- ip link

- ip route

- hostname

- hostname -I

- ping

- traceroute

- nslookup

- dig

- getent

- curl

- ss

- lsof

- nc

## Observations

- The loopback interface uses 127.0.0.1.

- The EC2 private IP belongs to the configured VPC network.

- The default route determines where non-local traffic is sent.

- DNS resolution and network reachability are separate checks.

- A listening port does not automatically prove that an application is healthy.

- An application listening only on localhost is not directly reachable through another network interface.

## Validation Results

- Network interfaces identified

- Routing table inspected

- DNS resolution verified

- HTTPS connectivity verified

- Listening ports inspected

- Local HTTP service tested

- Port connectivity validated

## Lessons Learned

- Troubleshoot networking layer by layer.

- Do not rely only on ping.

- Confirm both host reachability and port reachability.

- Check listening address as well as listening port.

- Validate application-layer response using curl.

- Review AWS Security Groups and NACLs when OS-level checks succeed but remote access fails.

## Screenshot Location

Day07_Networking_Lab_Screenshots/
