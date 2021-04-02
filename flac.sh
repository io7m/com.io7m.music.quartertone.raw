#!/bin/sh

for f in *.zip;
do
  DIRECTORY=$(echo "$f" | sed 's/\.zip//g')
  pushd ${DIRECTORY}
  for w in *.wav
  do
    flac --best --exhaustive-model-search --delete-input-file "$w"
  done
  popd
done
