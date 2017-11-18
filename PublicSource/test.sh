#!/bin/sh

work_dir=F:/study/01_work/testPlatform/PublicSource

cd ${work_dir}
git add .
git status | grep deleted | awk  '{print $2}' > F:/deleted.tmp
git status | grep "new file" | awk  '{print $3}' > F:/new.tmp
git status | grep modified | awk  '{print $2}' > F:/modified.tmp

sleep 3
