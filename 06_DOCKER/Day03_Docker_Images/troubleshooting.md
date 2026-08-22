# Day 03 - Docker Images Troubleshooting

## Scenario 1

Image Pull Failed

Cause:

Network Issue

Resolution:

Verify Connectivity.

## Scenario 2

Image Not Found

Cause:

Wrong Repository Name

Resolution:

Review Image Name.

## Scenario 3

Image Removal Failed

Cause:

Container Using Image

Resolution:

Remove Container First.

## Scenario 4

Image Download Slow

Cause:

Network Latency

Resolution:

Use Appropriate Registry Access.

## Scenario 5 (5+ Years)

Large Image Size

Investigation:

- Layers

- Base Image

- Packages

Resolution:

Optimize Image.

## Scenario 6 (5+ Years)

Security Issues In Image

Investigation:

- Base Image

- Dependencies

- Image Contents

Resolution:

Update Image And Rebuild.

## Scenario 7 (5+ Years)

Multiple Old Images Consuming Disk

Investigation:

docker images

docker system df

Resolution:

Cleanup Unused Images.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
