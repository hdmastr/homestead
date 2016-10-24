#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

# Turn of MySQL 'strict' mode
sed -i '/\[mysqld\]/a sql_mode=IGNORE_SPACE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION/' /etc/mysql/my.cnf
service mysql restart

# Install Adminer (site defined in Homestead.yaml default)
mkdir /usr/share/adminer
wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/index.php