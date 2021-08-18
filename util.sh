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

# manage keepass in browser
bash <(curl -s https://raw.githubusercontent.com/keepassxreboot/keepassxc/master/utils/keepassxc-snap-helper.sh)

#scrolling with momentum
`$ sudo apt install xserver-xorg-input-synaptics`
`$ sudo cp /usr/share/X11/xorg.conf.d/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf`
```bash
synclient VertScrollDelta=-70\
synclient -l | grep Coasting
    CornerCoasting          = 0
    CoastingSpeed           = 20
    CoastingFriction        = 50
```

