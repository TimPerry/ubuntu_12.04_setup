#! /bin/bash

echo -e "Installing tripwire.\n";

sudo apt-get install tripwire

cp $UBUNTU_SERVER_INSTALL_DIR/template_files/twpol.txt /etc/tripwire/

sudo twadmin -m P /etc/tripwire/twpol.txt;
sudo tripwire -m i;

echo "03 2 * * * root tripwire --check | /usr/bin/mail root -s 'Tripwire Check' 2>&1" >> /etc/crontab;