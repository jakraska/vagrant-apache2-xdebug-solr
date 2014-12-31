#!/bin/bash

##### INTERACTIVE INSTALL #####

# Install phpMyAdmin
echo "[interactive install] Installing phpMyAdmin..."
sudo apt-get install -y phpmyadmin
cd /etc/apache2/sites-enabled
sudo ln -s ../../phpmyadmin/apache.conf phpmyadmin.conf
sudo service apache2 restart # restart apache so latest php config is picked up
