#!/bin/bash







#####################
###    COCKPIT    ###
#####################
COCKPIT_LISTENING_PORT=""               # Port to connect to the interface
yes | apt install cockpit               # Installation
systemctl enable cockpit.socket         # Startup Activation
if [ -z $COCKPIT_LISTENING_PORT ]; then
    mkdir /etc/systemd/system/cockpit.socket.d
    echo "[Socket]" >> /etc/systemd/system/cockpit.socket.d/listen.conf
    echo "ListenStream=" >> /etc/systemd/system/cockpit.socket.d/listen.conf
    echo "ListenStream=$COCKPIT_LISTENING_PORT" >> /etc/systemd/system/cockpit.socket.d/listen.conf
fi

