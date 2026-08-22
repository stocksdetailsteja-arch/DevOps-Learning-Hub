# Day 04 - Loops Concepts

## What Is A Loop?

A loop repeatedly executes a block of code until a condition is satisfied.

Benefits:

- Automation

- Reduced Manual Effort

- Consistency

- Faster Execution

## For Loop

Used when the number of iterations is known.

Example:

for NUM in 1 2 3

do

echo "$NUM"

done

## While Loop

Executes while a condition is true.

Example:

COUNT=1

while [ "$COUNT" -le 5 ]

do

echo "$COUNT"

COUNT=$((COUNT+1))

done

## Until Loop

Executes until a condition becomes true.

Example:

COUNT=1

until [ "$COUNT" -gt 5 ]

do

echo "$COUNT"

COUNT=$((COUNT+1))

done

## Infinite Loop

Runs forever until stopped.

Example:

while true

do

echo "Running"

done

## Break Statement

Terminates loop execution.

Example:

for NUM in 1 2 3 4 5

do

if [ "$NUM" -eq 3 ]

then

break

fi

echo "$NUM"

done

## Continue Statement

Skips the current iteration.

Example:

for NUM in 1 2 3 4 5

do

if [ "$NUM" -eq 3 ]

then

continue

fi

echo "$NUM"

done

## Real World Example

A DevOps Engineer wants to restart services across multiple servers.

Instead of manually running commands, a loop automates the process.
