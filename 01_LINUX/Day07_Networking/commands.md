# Day 07 - Linux Networking Commands

## Command 1 - ip addr

Purpose:

Display network interfaces and IP addresses.

Command:

ip addr

Short form:

ip a

Screenshot:

01_ip_addr_output.png

## Command 2 - ip link

Purpose:

Display network-interface state and link information.

Command:

ip link

Screenshot:

02_ip_link_output.png

## Command 3 - hostname

Purpose:

Display the system hostname.

Command:

hostname

Screenshot:

03_hostname_output.png

## Command 4 - hostname -I

Purpose:

Display assigned IP addresses.

Command:

hostname -I

Screenshot:

04_hostname_ip_output.png

## Command 5 - ip route

Purpose:

Display the routing table.

Command:

ip route

Important entries:

- default route

- destination network

- gateway

- interface

Screenshot:

05_ip_route_output.png

## Command 6 - ping

Purpose:

Test IP reachability when ICMP is permitted.

Command:

ping -c 4 8.8.8.8

DNS-based test:

ping -c 4 github.com

Important:

Ping failure alone does not prove that a host or application is unavailable because ICMP may be blocked.

Screenshots:

06_ping_ip_output.png

07_ping_hostname_output.png

## Command 7 - traceroute

Purpose:

Display the network path toward a destination.

Install if required:

sudo apt install traceroute -y

Command:

traceroute github.com

Screenshot:

08_traceroute_output.png

## Command 8 - tracepath

Purpose:

Trace a path without requiring all traceroute functionality.

Command:

tracepath github.com

Screenshot:

09_tracepath_output.png

## Command 9 - nslookup

Purpose:

Query DNS information.

Install if required:

sudo apt install dnsutils -y

Command:

nslookup github.com

Screenshot:

10_nslookup_output.png

## Command 10 - dig

Purpose:

Perform detailed DNS queries.

Command:

dig github.com

Short output:

dig +short github.com

Query a specific record:

dig github.com A

Screenshot:

11_dig_output.png

## Command 11 - getent hosts

Purpose:

Resolve a hostname using the operating system name-service configuration.

Command:

getent hosts github.com

This can differ from direct DNS tools because the operating system may use multiple name-resolution sources.

Screenshot:

12_getent_output.png

## Command 12 - curl

Purpose:

Send requests and inspect HTTP or HTTPS responses.

Headers only:

curl -I https://github.com

Verbose connection details:

curl -v https://github.com

Timeout example:

curl --connect-timeout 5 https://github.com

Screenshots:

13_curl_headers_output.png

14_curl_verbose_output.png

## Command 13 - wget

Purpose:

Download content from a URL.

Command:

wget URL

Header-style diagnostic behavior may vary by options and target.

Use care to avoid downloading large files during diagnostics.

## Command 14 - ss

Purpose:

Inspect sockets, listening ports, and network connections.

Listening TCP and UDP ports:

sudo ss -tulnp

TCP connections:

ss -tan

Process information may require elevated privileges.

Screenshot:

15_ss_listening_output.png

## Command 15 - netstat

Purpose:

Display network connections and listening ports.

Install if required:

sudo apt install net-tools -y

Command:

sudo netstat -tulnp

Modern Linux systems generally prefer ss.

Screenshot:

16_netstat_output.png

## Command 16 - lsof

Purpose:

Display processes using network ports.

Install if required:

sudo apt install lsof -y

Command:

sudo lsof -i

Specific port:

sudo lsof -i :22

Screenshot:

17_lsof_port_output.png

## Command 17 - nc

Purpose:

Test TCP or UDP port connectivity.

Install if required:

sudo apt install netcat-openbsd -y

TCP test:

nc -vz github.com 443

Local listening test:

nc -l 8080

Important:

Use only against systems and ports you are authorized to test.

Screenshot:

18_nc_port_test.png

## Command 18 - resolvectl

Purpose:

Inspect DNS resolver configuration and status on supported systemd-based systems.

Command:

resolvectl status

Query:

resolvectl query github.com

Availability depends on the operating system configuration.

Screenshot:

19_resolver_status.png

## Command 19 - Route Selection

Purpose:

Determine which route Linux will choose for a destination.

Command:

ip route get 8.8.8.8

Screenshot:

20_route_selection.png

## Command 20 - Local Port Verification

Purpose:

Verify whether a local application is listening.

Command:

sudo ss -ltnp

Filter a port:

sudo ss -ltnp | grep :8080

Screenshot:

21_local_port_verification.png

## Network Investigation Sequence

hostname -I

ip addr

ip route

getent hosts destination

dig destination

nc -vz destination port

curl -v URL

ss -tulnp

Check application logs

Check OS firewall and cloud networking controls
