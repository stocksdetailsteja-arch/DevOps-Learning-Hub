# Day 07 - File Handling Commands

## Example 1 - Create File

touch sample.txt

Screenshot:

01_create_file.png

## Example 2 - Write To File

echo "Hello DevOps" > sample.txt

cat sample.txt

Screenshot:

02_write_file.png

## Example 3 - Append To File

echo "AWS" >> sample.txt

cat sample.txt

Screenshot:

03_append_file.png

## Example 4 - Read File

cat sample.txt

Screenshot:

04_read_file.png

## Example 5 - Read File Line By Line

Create:

read_file.sh

Content:

#!/bin/bash

while read LINE

do

echo "$LINE"

done < sample.txt

Screenshot:

05_read_line_by_line.png

## Example 6 - Check File Exists

if [ -f sample.txt ]

then

echo "Exists"

fi

Screenshot:

06_file_validation.png

## Example 7 - Check Empty File

if [ -s sample.txt ]

then

echo "Not Empty"

fi

Screenshot:

07_file_size_check.png

## Example 8 - Count Lines

wc -l sample.txt

Screenshot:

08_line_count.png

## Example 9 - Count Words

wc -w sample.txt

Screenshot:

09_word_count.png

## Example 10 - Report File Creation

echo "Status: Successful" > report.txt

cat report.txt

Screenshot:

10_report_generation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
