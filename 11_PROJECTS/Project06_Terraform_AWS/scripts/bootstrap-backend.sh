#!/usr/bin/env bash

set -euo pipefail

BUCKET_NAME="${1:-}"
AWS_REGION="${2:-ap-south-1}"

if [[ -z "${BUCKET_NAME}" ]]; then
    echo "Usage: $0 <globally-unique-bucket-name> [aws-region]"
    exit 1
fi

aws sts get-caller-identity >/dev/null

if aws s3api head-bucket \
    --bucket "${BUCKET_NAME}" 2>/dev/null; then
    echo "Bucket already exists and is accessible."
else
    if [[ "${AWS_REGION}" == "us-east-1" ]]; then
        aws s3api create-bucket \
            --bucket "${BUCKET_NAME}" \
            --region "${AWS_REGION}"
    else
        aws s3api create-bucket \
            --bucket "${BUCKET_NAME}" \
            --region "${AWS_REGION}" \
            --create-bucket-configuration \
            "LocationConstraint=${AWS_REGION}"
    fi
fi

aws s3api put-public-access-block \
    --bucket "${BUCKET_NAME}" \
    --public-access-block-configuration \
    BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true

aws s3api put-bucket-versioning \
    --bucket "${BUCKET_NAME}" \
    --versioning-configuration Status=Enabled

aws s3api put-bucket-encryption \
    --bucket "${BUCKET_NAME}" \
    --server-side-encryption-configuration \
    '{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'

echo "Terraform backend bucket prepared
