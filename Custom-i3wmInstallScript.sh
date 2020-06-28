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

sudo apt update && sudo apt -y i3-gaps i3lock gedit ranger arandr nitrogen feh variety compton rofi python3-pip 

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

sudo apt-get install -y cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2

cd ~/Downloads && git clone https://github.com/jaagr/polybar.git

cd polybar && ./build.sh

echo ""
echo "" 


echo "###############################
###   Installing Jgmenu   #####
###############################"

cd ~/Downloads && git clone https://github.com/johanmalm/jgmenu.git

cd jgmenuScript && bash jgmenuInstall.sh
