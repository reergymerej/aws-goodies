#!/usr/bin/env bash
# This will read an S3 file to stdout.
#
# Example:

# ./s3-read.sh jex-env-files foo.env | grep VERSION
# VERSION=1.0

BUCKET=$1
FILE=$2

aws s3 cp s3://$BUCKET/$FILE -