#!/usr/bin/env bash
# This will read an env file on S3 to stdout.
#
# Example:
#
# ./s3-read-env.sh | grep VERSION
# VERSION=1.0

BUCKET=jex-env-files
FILE=foo.env

aws s3 cp s3://$BUCKET/$FILE -
