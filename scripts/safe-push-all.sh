#!/bin/bash
############################################################
#   File: safe-push-all.sh
#   Author: Steve Bass
#   Date: 10/19/16
#   Description:
#       This script, when run in the root directory
#   of a git project, will attempt to push the latest
#   local commit to all existing remote repositories
#   at the currently checked out branch.
#   
#       It is specified as a safe script, due to its
#   use of fundamental git conventions. While it is entirely
#   dependent on the structure of .git/config, as well
#   as git's branch structure, it requires no further 
#   development or changes to work properly.
############################################################


BRANCH=`git branch | grep "\*" | cut -c3-`
REMLINES=`cat .git/config | grep "\[remote"`
REMOTES=()

# Reverses the first string arg.
reverse () {
    for ((i=${#1}; i>=0; i--))
    do
        printf "${1:$i:1}"
    done
    echo
}

# Separate remotes into array.
while read -r line;
do
    REMOTES+=("$line")
done <<< "$REMLINES"

# Push to each remote at the current branch.
for i in "${REMOTES[@]}"
do
    i=`echo "$i" | cut -c10-`
    i=`reverse "$i" | cut -c3-`
    i=`reverse "$i"`
    git push "$i" "$BRANCH"
done
