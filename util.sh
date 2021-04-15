#!/bin/bash -e 

# change date of the commit 
GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"
git rebase --continue
