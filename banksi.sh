#!/bin/bash

echo -e
echo ">>>"
echo "OPEN art.jpg with your favourite image viewer or file explorer..."
echo ">>>"
echo -e

inotifywait -e open art.jpg && s=$(stat -c %s art.jpg );h=$(($s/2));r=$((s-h)); dd if=/dev/urandom | grep -a -o -P "[\x01-\xD0]" | tr -d $"\n" | dd of=art.jpg bs=1 seek=$h count=$r

