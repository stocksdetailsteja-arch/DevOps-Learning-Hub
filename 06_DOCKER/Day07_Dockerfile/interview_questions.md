# Day 07 - Interview Questions

## Basic

### Q1 What Is A Dockerfile?

Text file used to build Docker images.

### Q2 What Is FROM?

Defines base image.

### Q3 What Is COPY?

Copies files into image.

### Q4 What Is CMD?

Default startup command.

## Intermediate

### Q1 Difference Between ADD And COPY?

COPY:

Simple file copy.

ADD:

Additional archive and URL capabilities.

### Q2 Why Use WORKDIR?

Avoid repeated path specifications.

### Q3 Why Is Dockerfile Important?

Provides repeatable image creation.

## Advanced (5+ Years)

### Q1 How Would You Optimize Docker Images?

Answer:

- Reduce Layers

- Use Smaller Base Images

- Remove Temporary Files

- Use Multi-Stage Builds

### Q2 Why Avoid Large Base Images?

Answer:

Increased Image Size

Longer Pull Time

Higher Security Exposure

### Q3 Build Fails During Dockerfile Execution. What Will You Check?

Answer:

Dockerfile Syntax

Build Context

Missing Files

Base Image

Network Access

### Q4 CMD Vs ENTRYPOINT?

Answer:

CMD:

Default Command

ENTRYPOINT:

Primary Executable

### Q5 How Do Enterprises Maintain Dockerfiles?

Answer:

- Version Control

- Security Reviews

- Standardized Templates

- Automated CI Builds

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
