# Day 07 - Advanced Networking Troubleshooting

## Scenario 1 - SSH Connection Times Out

### Symptoms

SSH client waits and then reports a timeout.

### Investigation

- Confirm public IP or hostname

- Check EC2 state

- Check Security Group port 22

- Check subnet route

- Check Internet Gateway path

- Check NACL rules

- Check sshd listening state

- Check OS firewall

### Possible Root Causes

- Wrong IP address

- Port 22 blocked

- Missing public route

- NACL restriction

- sshd down

- Host firewall restriction

## Scenario 2 - Permission Denied During SSH

### Important Difference

Permission denied normally means the network connection reached the SSH service, but authentication failed.

### Investigate

- Username

- Private key

- Key-file permissions

- authorized_keys

- sshd authentication logs

This is different from a timeout.

## Scenario 3 - DNS Resolution Failure

### Symptoms

IP connectivity works, but hostname-based access fails.

### Investigation

- getent hosts hostname

- nslookup hostname

- dig hostname

- resolvectl status

- Review resolver configuration

### Possible Causes

- Invalid DNS record

- Resolver unavailable

- DNS route blocked

- Incorrect private DNS configuration

- Cached stale result

## Scenario 4 - Application Works Locally But Not Remotely

### Investigation

- Check listening address

- Check listening port

- Test loopback

- Test private IP

- Check firewall

- Check Security Group

- Check NACL

- Check load balancer

### Common Root Cause

Application bound to 127.0.0.1 instead of an externally reachable interface.

## Scenario 5 - Port Is Open But Application Fails

### Explanation

A successful TCP connection confirms the port accepts a connection.

The application may still be unhealthy.

### Investigation

- curl response

- HTTP status

- TLS errors

- Application logs

- Dependency health

- Health-check behavior

## Scenario 6 - Jenkins Cannot Reach GitHub

### Investigation

- DNS lookup

- Port 443 or 22 connectivity

- Proxy configuration

- Jenkins-user environment

- SSH known-host configuration

- Credentials

- Git executable configuration

### Prevention

Monitor external dependency connectivity and maintain documented proxy and credential configuration.

## Scenario 7 - EC2 Has Internet Connectivity But Inbound Application Access Fails

### Investigation

- Confirm service listening address

- Confirm port

- Check inbound Security Group rule

- Check NACL

- Check public or load-balancer path

- Check host firewall

- Test from an external authorized system

Outbound connectivity does not prove inbound access is configured.

## Scenario 8 - Load Balancer Health Check Fails

### Investigation

- Target port

- Health path

- Protocol

- Security Group references

- Target status

- Application startup

- Response status code

- Host-header behavior

- Application logs

### Prevention

Create a lightweight health endpoint that verifies the dependencies required for traffic readiness.

## Scenario 9 - Intermittent Packet Loss

### Symptoms

- API timeouts

- High latency

- Random connection failures

### Investigation

- Capture timestamps

- Compare multiple destinations

- Check interface errors

- Review network metrics

- Trace path where useful

- Check overloaded resources

- Check provider or network-device events

### Important Note

Ping alone is not sufficient evidence for application packet loss.

## Scenario 10 - Kubernetes Service Unreachable

### Investigation

- Verify Service

- Verify selector

- Verify endpoints

- Verify pod readiness

- Check target port

- Check DNS

- Check network policy

- Check ingress or load balancer

A Service with no endpoints cannot route traffic to ready pods.

## Scenario 11 - Docker Container Cannot Reach External Service

### Investigation

- Test DNS inside container

- Check Docker network

- Check host route

- Check proxy variables

- Check firewall

- Check destination allowlist

- Compare host and container connectivity

## Scenario 12 - TLS Connection Fails But Port 443 Is Reachable

### Possible Causes

- Expired certificate

- Hostname mismatch

- Missing CA certificate

- Incorrect system time

- Unsupported TLS settings

- Proxy interception

### Investigation

Use verbose application diagnostics and approved TLS tools while protecting sensitive certificate and connection information.
