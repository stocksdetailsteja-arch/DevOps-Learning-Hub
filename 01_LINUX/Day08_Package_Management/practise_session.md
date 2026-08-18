# Day 08 Practice Session

## Lab Setup

mkdir -p ~/DEVOPS/DevOps-Learning-Hub/PRACTISE_SESSION/Day08_Package_Management_Lab

cd ~/DEVOPS/DevOps-Learning-Hub/PRACTISE_SESSION/Day08_Package_Management_Lab

## Lab 1

Update Cache

sudo apt update

Screenshot:

01_apt_update.png

## Lab 2

Install Tree

sudo apt install tree -y

tree --version

Screenshot:

02_install_tree.png

## Lab 3

Search Nginx

apt search nginx

Screenshot:

03_search_nginx.png

## Lab 4

Display Package Information

apt show nginx

Screenshot:

04_package_info.png

## Lab 5

Verify Installed Package

dpkg -l | grep tree

Screenshot:

05_dpkg_verify.png

## Lab 6

Locate Binary

which tree

whereis tree

Screenshot:

06_binary_location.png

## Lab 7

Remove Package

sudo apt remove tree -y

Screenshot:

07_package_removed.png

## Lab Validation

- Install Success

- Verification Success

- Package Removed
