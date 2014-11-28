#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.xmodmap
sysresources=/etc/X11/xinit/Xresources

main() {
	keymapping
	startup_programs
}

keymapping() {
	if [ -f $sysresources ]; then
	    xrdb -merge $sysresources
	fi

	if [ -f "$userresources" ]; then

	    xrdb -merge "$userresources"

	fi

	if [ -f "$usermodmap" ]; then
	    xmodmap "$usermodmap"
	fi
}

startup_programs() {
	xcompmgr -cF > /dev/null 2>&1 &
	xscreensaver > /dev/null 2>&1 &
}
