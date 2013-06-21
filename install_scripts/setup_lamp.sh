echo -e "Installing LAMP\n";

sudo apt-get install tasksel
sudo tasksel install lamp-server php5-curl php5-gd

echo -e "Done.\n\n";