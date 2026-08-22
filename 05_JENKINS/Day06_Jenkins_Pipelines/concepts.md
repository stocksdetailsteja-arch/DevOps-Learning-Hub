i# Day 06 - Jenkins Pipelines Concepts

## What Is A Jenkins Pipeline?

A Pipeline is an automated sequence of tasks executed by Jenkins.

Example:

Checkout

↓

Build

↓

Test

↓

Package

↓

Deploy

## What Is Pipeline As Code?

Pipeline logic is stored as code inside a source repository.

Benefits:

- Version Control

- Automation

- Reusability

- Review Process

- Auditability

Pipeline as Code keeps CI/CD logic versioned with application code.

## What Is A Jenkinsfile?

Jenkinsfile is a text file containing pipeline instructions.

Stored In:

Repository

↓

Source Control

↓

Versioning

A Jenkinsfile defines CI/CD workflows as code.

## Declarative Pipeline

Recommended approach.

Example Structure:

Pipeline

↓

Agent

↓

Stages

↓

Steps

Declarative Pipelines provide structured syntax.

## Scripted Pipeline

Groovy-based approach.

Provides:

- Flexibility

- Complex Logic

- Advanced Automation

## Agent

Determines where pipeline runs.

Examples:

any

linux

docker

kubernetes

## Stages

Stages organize pipeline tasks.

Examples:

Checkout

Build

Test

Package

Deploy

## Steps

Steps contain actual commands.

Example:

echo

sh

bat

archiveArtifacts

## Environment Variables

Common Variables:

BUILD_NUMBER

JOB_NAME

WORKSPACE

BUILD_ID

Used throughout pipelines.

## Parameters

Allow user input.

Examples:

ENVIRONMENT

VERSION

APPLICATION_NAME

## Post Actions

Executed after pipeline completion.

Examples:

success

failure

always

cleanup

## Real DevOps Example

GitHub

↓

Jenkinsfile

↓

Build

↓

Test

↓

Artifact

↓

Deploy

↓

Notification

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
