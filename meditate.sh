#! /bin/bash

pmset displaysleepnow

caffeinate -im zsh <<EOF
while true;
do
	if ( ioreg -n Root | grep -q CGSSessionScreenIsLocked );
	then : ;
	else logger -i 'meditate stopped'; break;
	fi
done;
EOF
