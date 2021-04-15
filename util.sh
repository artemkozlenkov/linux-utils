#!/bin/bash -e 

# change date of the commit 
GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"
git rebase --continue

#speed check, python a prerequisite
curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -
