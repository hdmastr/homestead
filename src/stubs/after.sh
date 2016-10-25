#!/usr/bin/env bash

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

if [ ! -f /usr/local/homestead_extras_installed ]; then
	echo "Installing Headmaster VM extras..."

	# Turn off MySQL 'strict' mode
	echo "Turning off MySQL strict mode..."
	sudo touch /etc/mysql/conf.d/disable_strict_mode.cnf
	echo "[mysqld]" | sudo tee -a /etc/mysql/conf.d/disable_strict_mode.cnf > /dev/null 2>&1
	echo "sql_mode=IGNORE_SPACE,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" | sudo tee -a /etc/mysql/conf.d/disable_strict_mode.cnf > /dev/null 2>&1
	sudo service mysql restart

	# Install Adminer (site defined in Homestead.yaml default)
	echo "Installing Adminer..."
	sudo mkdir /usr/share/adminer
	
	# Remeber this the next time we try to run this
	echo "Headmaster VM extras have been installed."
	sudo touch /usr/local/homestead_extras_installed
else
	echo "Headmaster VM extras already installed... moving on..." 
fi
