if [ ! -z $1 ] && [ $1 == "-i" ]; then 
sudo apt install mainline
sudo add-apt-repository --remove ppa:cappelikan/ppa
echo "install"
elif [ ! -z $1 ] && [ $1 == "-r" ]; then 
sudo apt remove mainline
fi;
