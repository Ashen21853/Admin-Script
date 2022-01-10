#!/bin/bash







#########################################################
##############     SOFTWARE INSTALLATION     ############
#########################################################

#####################
###   DOCKER CE   ###
#####################
yes | apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt update && sudo apt-get install docker-ce docker-ce-cli containerd.io

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

