# Day 05 - Freestyle Project Concepts

## What Is A Freestyle Project?

A Freestyle Project is a traditional Jenkins job type created through the Jenkins GUI.

Used for:

- Build Automation

- Script Execution

- Testing

- Simple CI Processes

## Freestyle Project Components

Freestyle Job

↓

SCM

↓

Build Environment

↓

Build Steps

↓

Post Build Actions

↓

Build Result

## Source Code Management (SCM)

Jenkins can retrieve source code from:

- Git

- GitHub

- Bitbucket

- SVN

Example:

GitHub Repository

↓

Checkout

↓

Workspace

↓

Build

## Build Environment

Controls environment behavior.

Examples:

- Delete Workspace Before Build

- Inject Environment Variables

- Add Build Timeout

## Build Steps

Build Steps perform actual work.

Examples:

Execute Shell

↓

Compile

↓

Test

↓

Package

## Example Build Step

echo "Hello Jenkins"

or

date

or

hostname

## Post Build Actions

Executed after build completion.

Examples:

- Archive Artifacts

- Email Notification

- Trigger Another Build

## Build History

Jenkins stores:

- Build Number

- Build Status

- Duration

- Console Logs

- Workspace Information

## Workspace

Workspace stores:

- Source Code

- Build Files

- Reports

- Artifacts

## Real DevOps Example

Developer Push

↓

Jenkins Freestyle Job

↓

Build

↓

Test

↓

Package

↓

Notification

## Freestyle vs Pipeline

Freestyle:

GUI Based

Easy To Learn

Pipeline:

Code Based

More Scalable

Pipeline is preferred for enterprise CI/CD.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
