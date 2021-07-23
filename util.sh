#!/bin/bash -e 

# change date of the commit 
GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"
git rebase --continue

#speed check, python a prerequisite
curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -

#append the new line to file
echo 'some asci' | tee -a >> ${test_file}.txt

#copy to buffer without empty spaces and tabs
cat ${test_file}.txt | sed 's/ *$//' | tr -d " \t\n\r" |  xclip -sel clip

# reduce pdf file size (opt: /ebook /screen /printer)
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf
