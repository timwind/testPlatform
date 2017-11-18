#!/bin/sh

if [ $# -lt 1 ]
then
    work_dir="F:/study/01_work/testProjectA"
else
    work_dir=$1
fi

#echo "${work_dir}"

cd ${work_dir}
git add .
git status | grep deleted | awk  '{print $2}' > F:/deleted.tmp
git status | grep "new file" | awk  '{print $3}' > F:/new.tmp
git status | grep modified | awk  '{print $2}' > F:/modified.tmp

sleep 3
