#!/bin/sh

FAILED=0

for f in *.zip;
do
  unzip -q -t "$f"
  if [ $? -ne 0 ]
  then
    FAILED=1
  fi
done

exit $FAILED
