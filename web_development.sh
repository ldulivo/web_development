#!/bin/bash

wget "https://www.apachefriends.org/xampp-files/7.4.1/xampp-linux-x64-7.4.1-0-installer.run"

sudo chmod +x xampp-linux-x64-7.4.1-0-installer.run
sudo ./xampp-linux-x64-7.4.1-0-installer.run

sudo ln -s "/opt/lampp/htdocs" /home/$USER/htdocs

sudo chown $USER /opt/lampp/htdocs -R

sudo rm /opt/lampp/htdocs/* -R


echo "<h1>HOLA MUNDO</H1>" > /opt/lampp/htdocs/index.php


sudo echo "xhost + && cd /opt/lampp/ && sudo ./manager-linux-x64.run" > xampp
sudo mv xampp /usr/bin/
sudo chmod +x /usr/bin/xampp
