# Day 08 - Text Processing Practice Session

## Lab Setup

mkdir -p ~/DEVOPS/DevOps-Learning-Hub/PRACTISE_SESSION/Day08_Text_Processing_Lab

cd ~/DEVOPS/DevOps-Learning-Hub/PRACTISE_SESSION/Day08_Text_Processing_Lab

Create:

app.log

with sample entries.

## Lab 1

Find ERROR messages.

grep ERROR app.log

Screenshot:

01_grep_error.png

## Lab 2

Find WARNING messages.

grep WARNING app.log

Screenshot:

02_warning_search.png

## Lab 3

Extract First Column.

awk '{print $1}' app.log

Screenshot:

03_awk_first_column.png

## Lab 4

Extract Multiple Fields.

awk '{print $1,$2}' app.log

Screenshot:

04_awk_multiple_fields.png

## Lab 5

Replace ERROR With CRITICAL.

sed 's/ERROR/CRITICAL/g' app.log

Screenshot:

05_sed_replace.png

## Lab 6

Sort Entries.

sort app.log

Screenshot:

06_sort_entries.png

## Lab 7

Remove Duplicates.

sort app.log | uniq

Screenshot:

07_remove_duplicates.png

## Lab 8

Convert Lowercase To Uppercase.

echo "devops" | tr 'a-z' 'A-Z'

Screenshot:

08_uppercase_conversion.png

## Lab 9

Display First Entries.

head app.log

Screenshot:

09_head_command.png

## Lab 10

Display Last Entries.

tail app.log

Screenshot:

10_tail_command.png

## Lab 11 - Real DevOps Log Analysis

Find all ERROR entries.

Count errors.

Generate report.

Screenshots:

11_error_analysis.png

12_report_generation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
