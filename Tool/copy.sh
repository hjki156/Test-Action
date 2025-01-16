#!/bin/bash

source_dir="./File/"
target_dir="./Page/File"

if [! -d "$target_dir" ]; then
  mkdir -p "$target_dir"
fi

find "$source_dir" -type f -exec cp {} "$target_dir" \;

file_count=1
for file in "$target_dir"/*; do
  base_name=$(basename "$file")
  if [ -e "$target_dir/$base_name" ]; then
    new_name="$target_dir/${base_name%.*}_$file_count.${base_name##*.}"
    while [ -e "$new_name" ]; do
      ((file_count++))
      new_name="$target_dir/${base_name%.*}_$file_count.${base_name##*.}"
    done
    mv "$file" "$new_name"
  fi
done
