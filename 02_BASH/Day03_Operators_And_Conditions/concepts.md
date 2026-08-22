# Day 03 - Operators And Conditions Concepts

## Why Operators Matter

Operators help compare values, perform calculations, and make decisions inside scripts.

Without operators, scripts cannot make intelligent decisions.

## Arithmetic Operators

Used for calculations.

Examples:

- +

- -

- *

- /

- %

Example:

RESULT=$((10+5))

Output:

15

## Comparison Operators

Numeric Comparisons:

-eq = Equal

-ne = Not Equal

-gt = Greater Than

-lt = Less Than

-ge = Greater Than Or Equal

-le = Less Than Or Equal

Example:

if [ 10 -gt 5 ]

then

echo "True"

fi

## String Operators

= Equal

!= Not Equal

-z String Length Zero

-n String Length Not Zero

Example:

if [ "$NAME" = "Teja" ]

then

echo "Match"

fi

## File Operators

-f File Exists

-d Directory Exists

-r Read Permission

-w Write Permission

-x Execute Permission

Example:

if [ -f file.txt ]

then

echo "Exists"

fi

## Logical Operators

&& AND

|| OR

! NOT

Example:

if [ "$ENV" = "PROD" ] && [ "$USER" = "admin" ]

then

echo "Deployment Allowed"

fi

## if Statement

Basic decision making.

Syntax:

if condition

then

commands

fi

## if-else Statement

Allows an alternative action.

Syntax:

if condition

then

commands

else

commands

fi

## elif Statement

Used for multiple conditions.

Example:

DEV

QA

UAT

PROD

Environment selection logic.

## Nested if

One if block inside another.

Used when multiple validations are required.

## Real World Example

Deployment Script:

Validate:

Environment

Version

User

Server Health

Only proceed if all validations pass.
