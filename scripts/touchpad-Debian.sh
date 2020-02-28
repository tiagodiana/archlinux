#!/bin/bash
if [ $UID != 0 ]; then
	echo "Você deve estar logado como Root"
else
	apt remove xserver-xorg-input-synaptics

	apt install xserver-xorg-input-libinput

	mkdir /etc/X11/xorg.conf.d

	echo 'Section "InputClass"
        	Identifier "libinput touchpad catchall"
        	MatchIsTouchpad "on"
        	MatchDevicePath "/dev/input/event*"
        	Driver "libinput"
        	Option "Tapping" "on"
	EndSection' > /etc/X11/xorg.conf.d/40-libinput.conf


	echo "Reinicie a Sessão para as atualizações terem exito"
fi
