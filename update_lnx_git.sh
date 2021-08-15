#!/bin/sh
[ ! -d "$HOME/git" ] && (mkdir $HOME/git && echo "$HOME/git Created" || echo "Error creating $HOME/git");
[ ! -d "$HOME/git/lnx" ] && (mkdir $HOME/git/lnx && echo "$HOME/git/lnx Created." || echo "Error creating $HOME/git/lnx");
[ ! -d "$HOME/git/lnx/.kodi" ] && (mkdir $HOME/git/lnx/.kodi && echo "$HOME/git/lnx/.kodi Created." || echo "Error creating $HOME/git/lnx/.kodi"); 
[ ! -d "$HOME/git/lnx/.kodi/userdata" ] && (mkdir $HOME/git/lnx/.kodi/userdata && echo "$HOME/git/lnx/.kodi/userdata Created." || echo "Error creating $HOME/git/lnx/.kodi/userdata"); 
[ ! -d "$HOME/git/lnx/.kodi/userdata/keymaps" ] && (mkdir $HOME/git/lnx/.kodi/userdata/keymaps && echo "$HOME/git/lnx/.kodi/userdata/keymaps Created." || echo "Error creating $HOME/git/lnx/.kodi/userdata/keymaps"); 
[ ! -d "$HOME/git/lnx/.config" ] && (mkdir $HOME/git/lnx/.config && echo "$HOME/git/lnx/.config Created." || echo "Error creating $HOME/git/lnx/.config"); 
[ ! -d "$HOME/git/lnx/.config/ulauncher" ] && (mkdir $HOME/git/lnx/.config/ulauncher && echo "$HOME/git/lnx/.config/.ulauncher Created." || echo "Error creating $HOME/git/lnx/.config/.ulauncher");
[ ! -d "$HOME/git/lnx/.config/i3" ] && (mkdir $HOME/git/lnx/.config/i3 && echo "$HOME/git/lnx/.config/.i3 Created." || echo "Error creating $HOME/git/lnx/.config/.i3");
[ ! -d "$HOME/git/lnx/.config/ranger" ] && (mkdir $HOME/git/lnx/.config/ranger && echo "$HOME/git/lnx/.config/ranger Created." || echo "Error creating $HOME/git/lnx/.config/ranger");

cp $HOME/.bashrc $HOME/git/lnx/ && echo ".bashrc Copied."
cp $HOME/.conkyrc $HOME/git/lnx/ && echo ".conkyrc Copied."
cp $HOME/.vimrc $HOME/git/lnx/ && echo ".vimrc Copied."
cp $HOME/.Xresources $HOME/git/lnx/ && echo ".Xresources Copied."
cp $HOME/i3blocks.conf $HOME/git/lnx/ && echo "i3blocks.conf Copied."
cp $HOME/.config/compton.conf $HOME/git/lnx/.config/ && echo "compton.conf Copied." 
cp $HOME/Documents/move-to-next-monitor $HOME/git/lnx/move-to-next-monitor && echo "move-to-next-monitor Copied."

cp -r $HOME/.config/ulauncher/* $HOME/git/lnx/.config/ulauncher/ && echo "ulauncher/ Copied." 
cp -r $HOME/.config/i3/* $HOME/git/lnx/.config/i3/ && echo "i3/ Copied." 
cp -r $HOME/.config/ranger/* $HOME/git/lnx/.config/ranger && echo "ranger/ Copied." 
cp -r $HOME/.kodi/userdata/keymaps/* $HOME/git/lnx/.kodi/userdata/keymaps/ && echo "kodi/keympas/ Copied." 
cp -r $HOME/.kodi/userdata/*.xml $HOME/git/lnx/.kodi/userdata/ && echo "kodi/ Copied." 
echo ""
echo "Done."

#git add .
#git commit -a
#git push origin master
