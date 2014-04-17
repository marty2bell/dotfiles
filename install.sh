#!/bin/bash

dest_dir=~
cwd=$(pwd)

echo $cwd

files=$(ls -ld .??* | grep ^- | awk '{print $9}')

for i in $files
do
  echo "linking $cwd/$i to $dest_dir/$i"
  ln -sf $cwd/$1 $dest_dir/$i
done

exit 0
