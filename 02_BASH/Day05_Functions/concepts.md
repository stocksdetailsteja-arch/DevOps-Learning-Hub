# Day 05 - Functions Concepts

## What Is A Function?

A function is a reusable block of code that performs a specific task.

Without functions:

- Repetitive code

- Difficult maintenance

- Larger scripts

With functions:

- Reusable logic

- Easier debugging

- Better readability

## Function Syntax

function_name() {

commands

}

Example:

greet() {

echo "Welcome To DevOps"

}

greet

## Calling A Function

Functions execute only when called.

Example:

hello() {

echo "Hello"

}

hello

## Function Arguments

Functions can accept arguments.

Example:

greet() {

echo "Hello $1"

}

greet Teja

Output:

Hello Teja

## Return Values

Bash functions return an exit status.

Example:

return 0

Meaning:

Success

## Local Variables

Local variables exist only inside a function.

Example:

local NAME="Teja"

Benefits:

- Prevent variable conflicts

- Cleaner scripts

## Global Variables

Available throughout the script.

Example:

APP_NAME="Inventory"

Every function can access it.

## Real World Example

Health Check Script:

check_disk() {

df -h

}

check_memory() {

free -h

}

check_cpu() {

top -b -n1

}

Functions keep the script organized.

## Why DevOps Engineers Use Functions

Benefits:

- Reusability

- Simpler Maintenance

- Better Testing

- Modular Automation

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
