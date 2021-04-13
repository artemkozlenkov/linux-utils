#!/bin/bash -e 

# to use the script add executive permissions and apply with flag '-i' for install, '-r' for remove
# e.g ./kernel-update.sh -i

sudo apt update

sudo apt install mainline
sudo add-apt-repository --remove ppa:cappelikan/ppa

#uncomment for deletion
#sudo apt remove mainline
