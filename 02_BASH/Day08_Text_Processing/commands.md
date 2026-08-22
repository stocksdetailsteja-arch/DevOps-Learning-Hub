# Day 08 - Text Processing Commands

## Lab Prerequisite

Create sample file:

echo "ERROR Database Connection Failed" > app.log

echo "INFO Application Started" >> app.log

echo "WARNING Memory Usage High" >> app.log

echo "ERROR Service Unavailable" >> app.log

## Command 1 - grep

Search ERROR lines.

grep "ERROR" app.log

Screenshot:

01_grep_error.png

## Command 2 - grep Ignore Case

grep -i "error" app.log

Screenshot:

02_grep_ignore_case.png

## Command 3 - grep Line Numbers

grep -n "ERROR" app.log

Screenshot:

03_grep_line_numbers.png

## Command 4 - awk

Print first column.

awk '{print $1}' app.log

Screenshot:

04_awk_column.png

## Command 5 - awk Multiple Columns

awk '{print $1,$2}' app.log

Screenshot:

05_awk_multiple_columns.png

## Command 6 - cut

echo "DEV,QA,PROD" | cut -d',' -f2

Screenshot:

06_cut_command.png

## Command 7 - sort

sort app.log

Screenshot:

07_sort_output.png

## Command 8 - uniq

sort app.log | uniq

Screenshot:

08_uniq_output.png

## Command 9 - tr

echo "devops" | tr 'a-z' 'A-Z'

Screenshot:

09_tr_uppercase.png

## Command 10 - sed Replace Text

sed 's/ERROR/CRITICAL/g' app.log

Screenshot:

10_sed_replace.png

## Command 11 - head

head -2 app.log

Screenshot:

11_head_output.png

## Command 12 - tail

tail -2 app.log

Screenshot:

12_tail_output.png

## Command 13 - tail -f

tail -f app.log

Open second terminal:

echo "ERROR Disk Full" >> app.log

Screenshot:

13_tail_follow.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
