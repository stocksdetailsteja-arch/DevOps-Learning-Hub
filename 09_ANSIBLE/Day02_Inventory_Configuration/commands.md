# Day 02 - Inventory Configuration Commands

## View Default Inventory

cat /etc/ansible/hosts

Screenshot:

01_default_inventory.png

## Create Inventory File

touch inventory.ini

Screenshot:

02_inventory_creation.png

## Display Inventory

cat inventory.ini

Screenshot:

03_inventory_view.png

## List Inventory Hosts

ansible all --list-hosts -i inventory.ini

Screenshot:

04_inventory_hosts.png

## Display Inventory Structure

ansible-inventory --graph -i inventory.ini

Screenshot:

05_inventory_graph.png

## Display Inventory In JSON

ansible-inventory --list -i inventory.ini

Screenshot:

06_inventory_json.png

## Ping All Hosts

ansible all -m ping -i inventory.ini

Screenshot:

07_ping_all.png

## Ping Group

ansible web -m ping -i inventory.ini

Screenshot:

08_ping_group.png

## Verify Inventory Variables

ansible-inventory --list

Screenshot:

09_inventory_variables.png

## Inventory Host Details

ansible-inventory --host web1

Screenshot:

10_inventory_host_details.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
