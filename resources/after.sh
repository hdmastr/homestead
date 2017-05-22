#!/usr/bin/env bash

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

if [ ! -f /usr/local/homestead_extras_installed ]; then
	echo "Installing Headmaster VM extras..."

	# Install Adminer (site defined in Homestead.yaml default)
	echo "Installing Adminer..."
	sudo mkdir /usr/share/adminer
	sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/index.php > /dev/null 2>&1
	
	# Remeber this the next time we try to run this
	echo "Headmaster VM extras have been installed."
	sudo touch /usr/local/homestead_extras_installed
else
	echo "Headmaster VM extras already installed... moving on..." 
fi
