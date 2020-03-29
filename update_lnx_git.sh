#!/bin/sh
[ ! -d "/home/chps/git" ] &&   mkdir ~/git &&   echo "~/git Created.";
[ ! -d "/home/chps/git/lnx" ] && mkdir ~/git/lnx && echo "~/git/lnx Created."
[ ! -d "/home/chps/git/lnx/.config" ] && mkdir ~/git/lnx/.config && echo "~/git/lnx/.config Created."
[ ! -d "/home/chps/git/lnx/.config/i3" ] && mkdir ~/git/lnx/.config/i3 && echo "~/git/lnx/.config/.config Created."
[ ! -d "/home/chps/git/lnx/.config/ranger" ] && mkdir ~/git/lnx/.config/ranger && echo "~/git/lnx/.config/ranger Created."

cp /home/chps/.bashrc ~/git/lnx/ && echo ".bachrc Copied."
cp /home/chps/.Xresources ~/git/lnx/ && echo ".Xresources Copied."
cp /home/chps/i3blocks.conf ~/git/lnx/ && echo "i3blocks.conf Copied."
cp /home/chps/.config/compton.conf ~/git/lnx/.config/ && echo "compton.conf Copied." 
cp -r /home/chps/.config/i3/* ~/git/lnx/.config/i3/ && echo "i3/ Copied." 
cp -r /home/chps/.config/ranger/* ~/git/lnx/.config/ranger && echo "ranger/ Copied." 
echo ""
echo "Done."

#git commit -a
#git push origin master
