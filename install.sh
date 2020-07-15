#!/bin/bash
# Install script for bruter
#
# VARS
COLOR1='\033[91m'
COLOR2='\033[92m'
COLOR3='\033[92m'
OKBLUE='\033[94m'
RESET='\e[0m'

echo -e "$COLOR1 + -- --=[ Bruter..... by @Shashwat$RESET"

echo -e "$RESET"

BRUTER_INSTALL_DIR=/usr/share/bruter

echo -e "$OKBLUE[*]$RESET Installing bruter under $BRUTER_INSTALL_DIR..."
mkdir -p $BRUTER_INSTALL_DIR 2> /dev/null
cp -Rf $PWD/* $BRUTER_INSTALL_DIR 
cd $BRUTER_INSTALL_DIR
apt-get update
apt-get install -y nmap hydra dnsenum
mkdir loot 2> /dev/null
chmod +x $BRUTER_INSTALL_DIR/bruter
rm -f /usr/bin/bruter 2> /dev/null
ln -s /usr/share/bruter/bruter /usr/bin/bruter
cp -f $BRUTER_INSTALL_DIR/bruter.desktop /usr/share/applications/ 2> /dev/null
echo -e "$OKBLUE[*]$RESET Done! $RESET"


