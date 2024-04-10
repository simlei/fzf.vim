#!/usr/bin/env bash

set -eou pipefail
while read -r line; do
  echo "$1/$line"
done < <(git -C "$1" ls-files --full-name)
