# Day 06 - VPC Commands

## List VPCs

aws ec2 describe-vpcs

Screenshot:

01_list_vpcs.png

## Create VPC

aws ec2 create-vpc
 --cidr-block 10.0.0.0/16

Screenshot:

02_create_vpc.png

## Describe Subnets

aws ec2 describe-subnets

Screenshot:

03_describe_subnets.png

## Create Public Subnet

aws ec2 create-subnet
 --vpc-id VPC_ID
 --cidr-block 10.0.1.0/24

Screenshot:

04_create_public_subnet.png

## Create Private Subnet

aws ec2 create-subnet
 --vpc-id VPC_ID
 --cidr-block 10.0.2.0/24

Screenshot:

05_create_private_subnet.png

## Create Internet Gateway

aws ec2 create-internet-gateway

Screenshot:

06_create_igw.png

## Attach Internet Gateway

aws ec2 attach-internet-gateway

Screenshot:

07_attach_igw.png

## Describe Route Tables

aws ec2 describe-route-tables

Screenshot:

08_route_tables.png

## Describe Security Groups

aws ec2 describe-security-groups

Screenshot:

09_security_groups.png

## Describe NACLs

aws ec2 describe-network-acls

Screenshot:

10_network_acls.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
