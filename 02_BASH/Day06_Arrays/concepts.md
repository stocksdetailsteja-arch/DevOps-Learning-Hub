# Day 06 - Arrays Concepts

## What Is An Array?

An array is a collection of multiple values stored under one variable name.

Example:

SERVERS=("server1" "server2" "server3")

## Why Arrays Matter?

Without arrays:

Multiple individual variables.

With arrays:

Single manageable structure.

Benefits:

- Simpler Automation

- Cleaner Code

- Better Scalability

## Creating Arrays

Example:

NAMES=("Teja" "Sai" "DevOps")

## Accessing Array Elements

First Element:

${NAMES[0]}

Second Element:

${NAMES[1]}

## Display Entire Array

${NAMES[@]}

## Array Length

${#NAMES[@]}

## Iterating Through Arrays

for ITEM in "${NAMES[@]}"

do

echo "$ITEM"

done

## Adding Elements

NAMES+=("AWS")

## Removing Elements

unset NAMES[1]

## Associative Arrays

Key-Value Storage.

Example:

declare -A SERVERS

SERVERS[DEV]="10.0.0.10"

SERVERS[PROD]="10.0.0.20"

## Real World DevOps Example

Deploy application to:

DEV

QA

UAT

PROD

Store environments in array.

Loop through array.

Automate deployment.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
