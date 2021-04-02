#!/bin/sh

for f in *.zip;
do
  DIRECTORY=$(echo "$f" | sed 's/\.zip//g')
  unzip -d "${DIRECTORY}" "$f"
done
