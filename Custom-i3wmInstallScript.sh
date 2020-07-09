#!/bin/bash

echo ""
echo "
###   Welcome to i3wm installation    ###"
echo ""
echo ""

echo "###############################
###   adding i3-gaps ppa   ####
###############################"
echo ""

sudo add-apt-repository ppa:kgilmer/speed-ricer

echo "Installing i3wm Libraries including i3-gaps."
echo ""

sudo apt install snapd

sudo apt install -y i3-gaps i3lock python3-pip gedit ranger arandr nitrogen feh compton rofi variety polybar

echo "###############################
###   Installing pywal   #####
###############################"
echo ""
echo "" 
pip3 install pywal
echo "Successfully installed."
echo ""
echo "" 

echo "###############################
###   Installing Polybar   ####
###############################"
echo ""
echo "" 

#sudo apt-get install \
  #cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev \
  #libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
  #libxcb-util0-dev libxcb-xkb-dev pkg-config python3-xcbgen \
  #xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev \
  #libiw-dev libcurl4-openssl-dev libpulse-dev \
  #libxcb-composite0-dev xcb libxcb-ewmh2 libjsoncpp-dev
  
#cd ~/Downloads && git clone https://github.com/jaagr/polybar.git

#cd polybar && ./build.sh

echo ""
echo "" 


echo "###############################
###   Installing Jgmenu   #####
###############################"

cd ~/Downloads && git clone https://github.com/codemelinux/jgmenuScript.git

cd jgmenuScript && bash jgmenuInstall.sh

echo "###############################
###   moving i3wm and polybar config files   #####
###############################"

mv ~/.config/i3/ ~/.config/i3.old
mv ~/.config/polybar/ ~/.config/polybar.old
mv ~/.bashrc ~/.bashrc.old
mv ~/.fonts/ ~/.fonts.old

cd ~/Downloads/i3wm && mv i3/ ~/.config/i3/
cd ~/Downloads/i3wm && mv polybar/ ~/.config/polybar/
cd ~/Downloads/i3wm && mv .bashrc ~/.bashrc
cd ~/Downloads/i3wm && mv .fonts/ ~/.fonts/

sudo chmod -R 774 ~/.config/polybar/
sudo chmod -R 774 ~/.config/i3/


