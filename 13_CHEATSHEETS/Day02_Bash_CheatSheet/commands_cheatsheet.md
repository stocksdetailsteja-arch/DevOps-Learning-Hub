# Bash Commands Cheat Sheet

## Script Execution

bash script.sh

./script.sh

## Script Validation

bash -n script.sh

## Script Debugging

bash -x script.sh

## Environment Variables

echo $PATH

echo $HOME

echo $USER

## Variables

name="Tejas"

echo $name

## User Input

read username

echo $username

## Arguments

echo $1

echo $2

echo $#

echo $@

## Conditions

if [ $? -eq 0 ]

then

echo "Success"

fi

## For Loop

for i in {1..5}

do

echo $i

done

## While Loop

while true

do

echo "Running"

done

## Functions

function test()

{

echo "Hello"

}

## Arrays

arr=(java aws docker)

echo ${arr[0]}

echo ${arr[@]}

## Date

date

## Hostname

hostname

## Process Check

ps -ef

## Disk Check

df -h

## Memory Check

free -h

## Cron Jobs

crontab -e

crontab -l

## Permissions

chmod +x script.sh

## Logging

echo "Started" >> app.log

tee output.log
