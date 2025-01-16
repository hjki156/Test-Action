#!/bin/bash

source_dir="./File/"
target_dir="./Page/File"

if [ ! -d "$target_dir" ]; then
  mkdir -p "$target_dir"
fi

find "$source_dir" -type f -exec cp {} "$target_dir" \;