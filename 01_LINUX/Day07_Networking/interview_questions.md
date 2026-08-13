# Day 07 - Networking Interview Questions And Answers

## Basic Questions

### Q1. What Is An IP Address?

An IP address identifies a network interface for communication over an IP network.

### Q2. What Is A Port?

A port identifies a network service or application endpoint on a host.

### Q3. What Is DNS?

DNS translates domain names into IP addresses and supports other record types used by applications and infrastructure.

### Q4. What Is A Default Gateway?

A default gateway is the router used when no more specific route exists for the destination.

### Q5. What Is The Loopback Address?

127.0.0.1 is the common IPv4 loopback address used for local-host communication.

## Intermediate Questions

### Q1. What Is The Difference Between TCP And UDP?

TCP is connection-oriented and provides ordered, reliable delivery.

UDP is connectionless and has lower protocol overhead but does not provide the same delivery guarantees.

### Q2. What Is The Difference Between Public And Private IP Addresses?

Private IP addresses are intended for private networks and are not directly internet-routable.

Public IP addresses can be routed over the internet when routing and security controls permit access.

### Q3. What Is The Difference Between 127.0.0.1 And 0.0.0.0 For Listening Services?

127.0.0.1 restricts the service to the local host.

0.0.0.0 normally means the service listens on all available IPv4 interfaces.

### Q4. What Is The Difference Between ping And curl?

Ping commonly tests ICMP reachability.

Curl tests application-layer protocols such as HTTP and HTTPS.

An application can be healthy even when ping is blocked, and ping can work while the application is unavailable.

### Q5. What Is The TCP Three-Way Handshake?

Client sends SYN

Server sends SYN-ACK

Client sends ACK

The connection is established after the exchange completes.

## Advanced Questions For 5+ Years Experience

### Q1. An Application Works On localhost But Is Not Reachable Remotely. How Do You Investigate?

Confirm the process is running.

Inspect the listening address using ss -ltnp.

Check whether the service listens on 127.0.0.1 or 0.0.0.0.

Verify the target port.

Test the private IP locally.

Check the OS firewall.

Check AWS Security Group and NACL rules.

Check route-table and subnet behavior.

Check reverse proxy or load-balancer configuration.

Validate using curl from another authorized host.

A frequent root cause is an application bound only to localhost.

### Q2. Jenkins Cannot Connect To GitHub. What Is Your Investigation Sequence?

- Confirm DNS resolution for github.com

- Test HTTPS port 443

- Test SSH port 22 if using SSH remotes

- Check proxy settings

- Check egress firewall and Security Group rules

- Verify system time for TLS validation

- Inspect Git and Jenkins logs

- Test from the Jenkins runtime user

- Verify credentials separately from network connectivity

Testing as the Jenkins user is important because proxy, SSH key, known-host, and environment configuration may differ from the interactive user.

### Q3. DNS Resolution Is Intermittent In Production. How Do You Investigate?

Capture affected timestamps and hostnames.

Compare application errors with direct resolver queries.

Check configured resolvers.

Query each resolver separately.

Examine timeouts, SERVFAIL, NXDOMAIN, and latency.

Check cache behavior and TTL.

Inspect packet loss and network path to the resolver.

Check split-horizon or private DNS configuration.

Review recent DNS changes.

Add monitoring for resolver latency and failure rate.

### Q4. A Load Balancer Reports Unhealthy Targets While The Application Appears Running. What Do You Check?

- Health-check path

- Health-check port

- Protocol

- Expected status code

- Application listening address

- Host-header requirements

- Security Group rules

- Target registration

- Application startup duration

- Dependency failures

- Logs for the health-check request

A running process does not prove the configured health endpoint is healthy.

### Q5. How Do You Troubleshoot Intermittent API Timeouts?

Identify whether timeout occurs during DNS, connection, TLS, or response processing.

Correlate client and server timestamps.

Review load-balancer and application metrics.

Inspect packet loss and latency.

Check connection-pool exhaustion.

Check DNS behavior.

Review dependency latency.

Check retries because retries can amplify traffic.

Review network and application logs.

Capture representative traces or packet data where authorized.

### Q6. What Is The Difference Between An AWS Security Group And A Network ACL?

A Security Group is associated with supported resources or interfaces and is stateful.

A Network ACL is associated with a subnet and is stateless.

Troubleshooting must consider both inbound and outbound NACL rules because return traffic is evaluated separately.

### Q7. A Kubernetes Pod Cannot Resolve A Service Name. What Do You Check?

- Pod DNS configuration

- Service name and namespace

- Service existence

- Endpoint or EndpointSlice records

- CoreDNS pod health

- CoreDNS logs

- Network policy

- Node-level connectivity

- Search domains

- Whether the application is using the correct fully qualified service name

### Q8. A Container Port Is Listening But The Application Is Not Reachable From The Host. What Do You Check?

- Container listening address

- Port publishing configuration

- Host firewall

- Docker network

- Container IP

- Application logs

- Process health

- Whether the port is exposed versus actually published

EXPOSE documentation alone does not publish a port to the host.

### Q9. How Do You Distinguish A Network Failure From An Application Failure?

Perform progressive checks:

DNS resolution

Route selection

TCP port connection

TLS negotiation

HTTP or application response

Application logs

If TCP connects but the application returns an HTTP error, the network path may be working while the application is failing.

### Q10. What Evidence Should Be Collected During A Production Network Incident?

- Exact source and destination

- Port and protocol

- Failure timestamps

- DNS results

- Route information

- Listening socket information

- Connectivity-test output

- HTTP or TLS errors

- Firewall and cloud-rule context

- Load-balancer health

- Application logs

- Recent configuration or deployment changes

- Packet capture only where authorized and necessary
