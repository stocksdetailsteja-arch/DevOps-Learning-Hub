# Day 06 - Arrays Commands

## Example 1 - Create Array

Create:

array.sh

Content:

#!/bin/bash

NAMES=("Teja" "Sai" "AWS")

echo "${NAMES[@]}"

Screenshot:

01_create_array.png

## Example 2 - Access Elements

Content:

#!/bin/bash

NAMES=("Teja" "Sai" "AWS")

echo "${NAMES[0]}"

echo "${NAMES[1]}"

Screenshot:

02_access_elements.png

## Example 3 - Array Length

Content:

#!/bin/bash

NAMES=("A" "B" "C")

echo "${#NAMES[@]}"

Screenshot:

03_array_length.png

## Example 4 - Loop Through Array

Content:

#!/bin/bash

NAMES=("DEV" "QA" "PROD")

for ENV in "${NAMES[@]}"

do

echo "$ENV"

done

Screenshot:

04_array_loop.png

## Example 5 - Add Element

Content:

#!/bin/bash

NAMES=("DEV" "QA")

NAMES+=("PROD")

echo "${NAMES[@]}"

Screenshot:

05_add_element.png

## Example 6 - Remove Element

Content:

#!/bin/bash

NAMES=("DEV" "QA" "PROD")

unset NAMES[1]

echo "${NAMES[@]}"

Screenshot:

06_remove_element.png

## Example 7 - Associative Array

Content:

#!/bin/bash

declare -A SERVERS

SERVERS[DEV]="10.0.0.10"

SERVERS[PROD]="10.0.0.20"

echo "${SERVERS[DEV]}"

Screenshot:

07_associative_array.png

## Example 8 - Deployment Targets

Content:

#!/bin/bash

TARGETS=("app1" "app2" "app3")

for APP in "${TARGETS[@]}"

do

echo "Deploying $APP"

done

Screenshot:

08_deployment_targets.png

## Example 9 - Server List

Content:

#!/bin/bash

SERVERS=("server1" "server2" "server3")

for SERVER in "${SERVERS[@]}"

do

echo "$SERVER"

done

Screenshot:

09_server_list.png

## Example 10 - Kubernetes Namespace Array

Content:

#!/bin/bash

NAMESPACES=("dev" "qa" "prod")

for NS in "${NAMESPACES[@]}"

do

echo "$NS"

done

Screenshot:

10_namespace_array.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
