# Day 04 - Loops Commands

## Example 1 - Simple For Loop

Create:

for_loop.sh

Content:

#!/bin/bash

for NUM in 1 2 3 4 5

do

echo "$NUM"

done

Screenshot:

01_for_loop.png

## Example 2 - Range Based Loop

Content:

#!/bin/bash

for NUM in {1..10}

do

echo "$NUM"

done

Screenshot:

02_range_loop.png

## Example 3 - Iterate Files

Content:

#!/bin/bash

for FILE in *

do

echo "$FILE"

done

Screenshot:

03_file_iteration.png

## Example 4 - While Loop

Content:

#!/bin/bash

COUNT=1

while [ "$COUNT" -le 5 ]

do

echo "$COUNT"

COUNT=$((COUNT+1))

done

Screenshot:

04_while_loop.png

## Example 5 - Until Loop

Content:

#!/bin/bash

COUNT=1

until [ "$COUNT" -gt 5 ]

do

echo "$COUNT"

COUNT=$((COUNT+1))

done

Screenshot:

05_until_loop.png

## Example 6 - Break Statement

Content:

#!/bin/bash

for NUM in {1..10}

do

if [ "$NUM" -eq 5 ]

then

break

fi

echo "$NUM"

done

Screenshot:

06_break_statement.png

## Example 7 - Continue Statement

Content:

#!/bin/bash

for NUM in {1..10}

do

if [ "$NUM" -eq 5 ]

then

continue

fi

echo "$NUM"

done

Screenshot:

07_continue_statement.png

## Example 8 - Loop Through Arguments

Content:

#!/bin/bash

for ARG in "$@"

do

echo "$ARG"

done

Screenshot:

08_loop_arguments.png

## Example 9 - Nested Loop

Content:

#!/bin/bash

for ROW in 1 2

do

for COL in 1 2 3

do

echo "$ROW-$COL"

done

done

Screenshot:

09_nested_loop.png

## Example 10 - Service Monitoring Loop

Content:

#!/bin/bash

for SERVICE in ssh cron

do

systemctl is-active $SERVICE

done

Screenshot:

10_service_monitor_loop.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
