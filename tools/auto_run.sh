#!/bin/bash

dir_root = `pwd`
# prepare files
for proj in [v2ray]
do
    cd $dir_root/$proj
    bash *.sh
done

# for git commit
time_now=$(date +"%Y%m%d-%H:%M:%S")

if [ $# -eq 0 ];then
    commit_msg="modified in $time_now"
else
    commit_msg=$1
fi

git add . 
# echo "commit-msg: $commit_msg"
git commit -m $commit_msg
git push --all

echo "done : $0"
