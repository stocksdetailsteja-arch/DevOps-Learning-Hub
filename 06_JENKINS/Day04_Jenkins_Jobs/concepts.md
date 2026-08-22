# Day 04 - Jenkins Jobs Concepts

## What Is A Jenkins Job?

A Jenkins Job is a configured task executed by Jenkins.

Examples:

- Build Application

- Run Tests

- Deploy Software

- Execute Scripts

## Job Types

Freestyle Job

Most common beginner job type.

Supports:

- Source Code Checkout

- Build Commands

- Post Build Actions

Pipeline Job

Pipeline as Code using Jenkinsfile.

Will be covered later.

## Job Execution Flow

Job Trigger

↓

Queue

↓

Executor

↓

Workspace

↓

Build Steps

↓

Console Output

↓

Result

## Build Triggers

A trigger starts a job.

Examples:

Manual Trigger

↓

User Click Build

Scheduled Trigger

↓

Cron Schedule

GitHub Trigger

↓

Repository Event

## Build Steps

Build Steps perform actual work.

Examples:

- Shell Script

- Maven Build

- Gradle Build

- Docker Build

## Parameters

Parameters allow user input before build execution.

Examples:

Application Version

Environment

Deployment Target

## Environment Variables

Examples:

BUILD_NUMBER

JOB_NAME

WORKSPACE

BUILD_ID

Useful inside scripts.

## Console Output

Console Output contains:

- Execution Logs

- Error Messages

- Success Messages

- Build Details

Primary troubleshooting source.

## Post Build Actions

Executed after build completion.

Examples:

- Archive Artifacts

- Send Notifications

- Trigger Another Job

## Workspace Usage

Workspace stores:

- Source Code

- Build Output

- Temporary Files

Workspaces should be cleaned when necessary.

## Real DevOps Example

Developer Push

↓

Jenkins Job

↓

Build

↓

Test

↓

Artifact

↓

Notification

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
