# Day 03 - Operators And Conditions Commands

## Example 1 - Arithmetic Operator

Create:

arithmetic.sh

Content:

#!/bin/bash

A=10

B=5

SUM=$((A+B))

echo "$SUM"

Screenshot:

01_arithmetic_operator.png

## Example 2 - Numeric Comparison

Create:

numeric_compare.sh

Content:

#!/bin/bash

NUM=10

if [ "$NUM" -gt 5 ]

then

echo "Greater"

fi

Screenshot:

02_numeric_comparison.png

## Example 3 - String Comparison

Create:

string_compare.sh

Content:

#!/bin/bash

NAME="Teja"

if [ "$NAME" = "Teja" ]

then

echo "Matched"

fi

Screenshot:

03_string_comparison.png

## Example 4 - if else

Create:

if_else.sh

Content:

#!/bin/bash

MARKS=40

if [ "$MARKS" -ge 35 ]

then

echo "Pass"

else

echo "Fail"

fi

Screenshot:

04_if_else_output.png

## Example 5 - elif

Create:

environment.sh

Content:

#!/bin/bash

ENV=$1

if [ "$ENV" = "DEV" ]

then

echo "Development"

elif [ "$ENV" = "QA" ]

then

echo "Quality"

elif [ "$ENV" = "PROD" ]

then

echo "Production"

else

echo "Invalid"

fi

Screenshot:

05_elif_output.png

## Example 6 - File Exists

Create:

file_check.sh

Content:

#!/bin/bash

if [ -f test.txt ]

then

echo "File Exists"

else

echo "File Missing"

fi

Screenshot:

06_file_exists.png

## Example 7 - Directory Check

Content:

#!/bin/bash

if [ -d logs ]

then

echo "Directory Exists"

fi

Screenshot:

07_directory_check.png

## Example 8 - Exit Status Validation

Content:

#!/bin/bash

mkdir temp

if [ $? -eq 0 ]

then

echo "Success"

else

echo "Failed"

fi

Screenshot:

08_exit_status.png
