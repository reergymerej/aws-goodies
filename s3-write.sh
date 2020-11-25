#!/usr/bin/env bash
# This will write an S3 file from stdin.
#
# Example:

# echo "hello" | ./s3-write.sh jex-env-files greetings

BUCKET=$1
FILE=$2

aws s3 cp - s3://$BUCKET/$FILE
