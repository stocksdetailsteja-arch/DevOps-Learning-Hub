# Day 05 - Functions Commands

## Example 1 - Simple Function

Create:

simple_function.sh

Content:

#!/bin/bash

greet() {

echo "Welcome To DevOps"

}

greet

Screenshot:

01_simple_function.png

## Example 2 - Function With Parameter

Create:

function_parameter.sh

Content:

#!/bin/bash

greet() {

echo "Hello $1"

}

greet Teja

Screenshot:

02_function_parameter.png

## Example 3 - Multiple Parameters

Content:

#!/bin/bash

deploy() {

echo "Application: $1"

echo "Environment: $2"

}

deploy inventory PROD

Screenshot:

03_multiple_parameters.png

## Example 4 - Function Return Status

Content:

#!/bin/bash

check() {

return 0

}

check

echo $?

Screenshot:

04_function_return.png

## Example 5 - Local Variable

Content:

#!/bin/bash

test_function() {

local NAME="Teja"

echo "$NAME"

}

test_function

Screenshot:

05_local_variable.png

## Example 6 - Global Variable

Content:

#!/bin/bash

APP="Inventory"

show_app() {

echo "$APP"

}

show_app

Screenshot:

06_global_variable.png

## Example 7 - Multiple Functions

Content:

#!/bin/bash

cpu() {

echo "CPU Check"

}

memory() {

echo "Memory Check"

}

disk() {

echo "Disk Check"

}

cpu

memory

disk

Screenshot:

07_multiple_functions.png

## Example 8 - Function Calling Function

Content:

#!/bin/bash

second() {

echo "Second"

}

first() {

echo "First"

second

}

first

Screenshot:

08_nested_function_call.png

## Example 9 - Health Check Function

Content:

#!/bin/bash

check_memory() {

free -h

}

check_memory

Screenshot:

09_health_check_function.png

## Example 10 - Service Status Function

Content:

#!/bin/bash

check_service() {

systemctl is-active "$1"

}

check_service ssh

Screenshot:

10_service_status_function.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
