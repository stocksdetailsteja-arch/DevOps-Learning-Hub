# Day 08 Commands

## Update Package Cache

apt update

Screenshot:

01_apt_update.png

## Upgrade Installed Packages

apt upgrade -y

Screenshot:

02_apt_upgrade.png

## Install Package

sudo apt install tree -y

Verify:

tree --version

Screenshot:

03_install_tree.png

## Search Package

apt search nginx

Screenshot:

04_search_package.png

## Package Details

apt show nginx

Screenshot:

05_package_details.png

## List Installed Packages

apt list --installed

Screenshot:

06_installed_packages.png

## Remove Package

sudo apt remove tree -y

Screenshot:

07_remove_package.png

## Purge Package

sudo apt purge tree -y

Screenshot:

08_purge_package.png

## Verify Package

dpkg -l | grep nginx

Screenshot:

09_dpkg_verify.png

## Package Files

dpkg -L nginx

Screenshot:

10_package_files.png

## Find Command Location

which bash

whereis bash

Screenshot:

11_which_whereis.png

## Snap Packages

snap list

Screenshot:

12_snap_list.png
