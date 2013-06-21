#! /bin/bash

echo "Making install scripts executable, (enter password if needed)";
sudo chmod -R +x ./install_scripts
export UBUNTU_SERVER_INSTALL_DIR=`pwd`;

for SCRIPT in $UBUNTU_SERVER_INSTALL_DIR/install_scripts/*
do
	if [ -f $SCRIPT -a -x $SCRIPT ]
	then
		$SCRIPT
	fi
done