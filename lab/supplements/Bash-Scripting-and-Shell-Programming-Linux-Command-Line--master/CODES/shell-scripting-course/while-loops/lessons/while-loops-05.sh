#!/bin/bash

grep ext4 /etc/fstab | while read LINE
do
  echo "xfs: ${LINE}"
done
