# Day 07 - Dockerfile Concepts

## What Is A Dockerfile?

A Dockerfile is a text file containing instructions to build a Docker Image.

Example Flow:

Dockerfile

↓

docker build

↓

Docker Image

↓

Container

The workbook identifies Dockerfile creation and image building as the primary objective of this day.

## Build Context

Build Context is the directory sent to Docker during image creation.

Example:

Project Folder

↓

Docker Build

↓

Docker Engine

Everything inside the build context can be used by Dockerfile.

## Dockerfile Architecture

Base Image

↓

Install Packages

↓

Copy Application

↓

Configure Environment

↓

Start Application

## FROM Instruction

Defines base image.

Example:

FROM ubuntu

Purpose:

Starting Point For Image Creation

## WORKDIR Instruction

Sets working directory.

Example:

WORKDIR /app

Purpose:

Simplifies file operations.

## COPY Instruction

Copies files from host to image.

Example:

COPY . /app

Purpose:

Add application source code.

## ADD Instruction

Similar to COPY.

Additional Capabilities:

- Download URLs

- Extract Archives

## RUN Instruction

Executes commands during build.

Example:

RUN apt update

Purpose:

Install packages and dependencies.

## EXPOSE Instruction

Documents application ports.

Example:

EXPOSE 8080

Purpose:

Indicates service port.

## CMD Instruction

Defines default container command.

Example:

CMD ["java","-jar","app.jar"]

Runs when container starts.

## ENTRYPOINT Instruction

Defines main executable.

Example:

ENTRYPOINT ["java","-jar","app.jar"]

Application always starts through ENTRYPOINT.

## CMD vs ENTRYPOINT

CMD:

Default Command

Can Be Overridden

ENTRYPOINT:

Primary Executable

Typically Fixed

## Docker Image Build Flow

Source Code

↓

Dockerfile

↓

Build Image

↓

Store Image

↓

Run Container

## Real DevOps Example

GitHub

↓

Jenkins Build

↓

Dockerfile

↓

Docker Image

↓

Docker Registry

↓

Kubernetes

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
