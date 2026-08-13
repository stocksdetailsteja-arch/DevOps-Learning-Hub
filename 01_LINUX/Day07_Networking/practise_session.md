# Day 07 - Networking Practice Session

## Practice Directory

Create the lab directory from the repository root:

mkdir -p PRACTISE_SESSION/Day07_Networking_Lab

cd PRACTISE_SESSION/Day07_Networking_Lab

Verify:

pwd

## Lab 1 - Identify Network Interfaces

Run:

ip addr

Record:

- Interface name

- Private IP address

- Loopback address

Screenshot:

01_ip_addr_output.png

## Lab 2 - Identify Routing Configuration

Run:

ip route

Identify:

- Default route

- Gateway

- Network interface

Screenshot:

02_ip_route_output.png

## Lab 3 - Identify Hostname And Local IP

Run:

hostname

hostname -I

Screenshots:

03_hostname_output.png

04_hostname_ip_output.png

## Lab 4 - Test IP Connectivity

Run:

ping -c 4 8.8.8.8

Expected:

Responses if ICMP and network access are permitted.

Screenshot:

05_ping_ip_output.png

## Lab 5 - Test DNS And Connectivity

Run:

ping -c 4 github.com

Interpretation:

- IP ping works but hostname ping fails: possible DNS problem

- Both fail: possible route, firewall, or egress problem

Screenshot:

06_ping_dns_output.png

## Lab 6 - DNS Resolution

Run:

nslookup github.com

dig +short github.com

getent hosts github.com

Screenshots:

07_nslookup_output.png

08_dig_output.png

09_getent_output.png

## Lab 7 - HTTP Connectivity

Run:

curl -I https://github.com

Then:

curl -v https://github.com

Observe:

- DNS resolution

- Connection attempt

- TLS details

- HTTP status

Screenshots:

10_curl_headers_output.png

11_curl_verbose_output.png

## Lab 8 - Listening Ports

Run:

sudo ss -tulnp

Identify:

- SSH port

- Listening address

- Process where available

Screenshot:

12_ss_listening_output.png

## Lab 9 - Inspect SSH Port Usage

Run:

sudo lsof -i :22

Screenshot:

13_lsof_ssh_output.png

## Lab 10 - Test Remote HTTPS Port

Run:

nc -vz github.com 443

Expected:

Successful connection if DNS, routing, and outbound access are working.

Screenshot:

14_nc_https_output.png

## Lab 11 - Local HTTP Service Test

Start a safe temporary web server inside the practice directory:

python3 -m http.server 8080

Open another terminal session and run:

curl -I http://127.0.0.1:8080

Check the listening socket:

sudo ss -ltnp | grep :8080

Stop the server using Ctrl+C.

Screenshots:

15_local_http_server.png

16_local_http_curl.png

17_local_port_8080.png

## Lab 12 - Localhost Versus Private IP

Start the temporary server again:

python3 -m http.server 8080

Test:

curl -I http://127.0.0.1:8080

Test using the private IP shown by hostname -I:

curl -I http://PRIVATE_IP:8080

Replace PRIVATE_IP with the actual private IP.

Stop the server using Ctrl+C.

Screenshot:

18_localhost_private_ip_test.png

## Lab 13 - Route Selection

Run:

ip route get 8.8.8.8

Record:

- Selected interface

- Selected source address

- Gateway where shown

Screenshot:

19_route_selection.png

## Lab Checklist

- Interface identified

- Private IP identified

- Loopback identified

- Default gateway identified

- IP connectivity tested

- DNS resolution tested

- HTTP connectivity tested

- Listening ports checked

- Port connectivity tested

- Local HTTP server tested

- Route selection checked

## Cleanup

Confirm no temporary server remains:

pgrep -a python3

Terminate only the temporary process after confirming the PID:

kill ACTUAL_PID

Replace ACTUAL_PID with the numeric PID.
