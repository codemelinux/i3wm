!!! refer to i3wm-Install-Sheet.txt for installation



##########################################################
    	##   >>> Borber Style and i3-gaps <<<    ##
##########################################################


#Needed for i3-gaps
hide_edge_borders both
for_window [class="^.*"] border pixel 2 
gaps inner 5
gaps outer 4


bindsym $mod+plus	gaps outer current plus 5
bindsym $mod+minus	gaps outer current minus 5

bindsym $mod+shift+plus       gaps inner all plus 5
bindsym $mod+shift+minus      gaps inner all minus 5

# Only enable gaps on a workspace when there is at least one container
#smart_gaps on

##########################################################
	   ##       >>> Polybar startup <<<        ##
##########################################################

exec_always --no-startup-id ~/.config/polybar/topPanel.sh &amp;
exec_always --no-startup-id ~/.config/polybar/bottomPanel.sh &amp;



##########################################################
		##       >>> Pywal setup <<<      ##
##########################################################

bindsym $alt+Shift+n exec variety -n && wal -i $(cat $HOME/.config/variety/wallpaper/wallpaper.jpg.txt) ### Next Pywal wallpaper
bindsym $alt+Shift+t exec variety -t && wal -i $(cat $HOME/.config/variety/wallpaper/wallpaper.jpg.txt) ### Trash Pywal wallpaper
bindsym $alt+Shift+u exec wal -i $(cat $HOME/.config/variety/wallpaper/wallpaper.jpg.txt) ### Update pywal wallpaper
bindsym $alt+Shift+p exec variety -p  && wal -i $(cat $HOME/.config/variety/wallpaper/wallpaper.jpg.txt) ### Previous Pywal wallpaper



##########################################################
		##       >>> Variety setup <<<      ##
##########################################################


bindsym $alt+n exec variety -n ### next wallpaper
bindsym $alt+t exec variety -t ### Trash wallpaper
bindsym $alt+p exec variety -p ### Previous wallpaper
bindsym $alt+f exec variety -f ### Favorite wallpaper
