#!/usr/bin/env bash
# This will update something in a file in S3.
#
# Example:
# ./s3-update.sh jex-env-files foo.env VERSION 9.9

BUCKET=$1
FILE=$2
KEY=$3
VALUE=$4

./s3-read.sh $BUCKET $FILE | \
  sed "s/$KEY=.*/$KEY=$VALUE/g" | \
  ./s3-write.sh $BUCKET $FILE
