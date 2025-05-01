#!/usr/bin/env sh
set -eu

ASCII_DIR="ascii-art"

cd $(dirname $0)

files=$(ls -1 $ASCII_DIR)
number_of_files=$(echo "$files" | wc -l)

r=$RANDOM
# echo "$r % $n"
n=$(echo "($r % $number_of_files) + 1" | bc)

nth_filename=$(echo "$files" | sed -n "${n}p")
source "$ASCII_DIR/$nth_filename"

