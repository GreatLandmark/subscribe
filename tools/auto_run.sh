#!/bin/bash

proj_list="v2ray"

dir_root = `pwd`
# prepare files
for proj in $proj_list
do
    cd $dir_root/$proj
    bash *.sh
    cd -
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
git commit -m "[auto] $commit_msg"
# git push --all

echo "done : $0"
