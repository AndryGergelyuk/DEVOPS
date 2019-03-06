#!/bin/sh
sudo apt-get update
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2
sudo apt-get install php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml
sudo apt-get install apache2 mysql-client mysql-server
sudo apt-get update
sudo systemctl restart apache2
sudo curl -L https://download.moodle.org/download.php/direct/stable32/moodle-latest-32.tgz > moodle.tgz
sudo tar -xvzf moodle.tgz -C /var/www/html
#mkdir /var/moodledata
#sudo chown -R www-data /var/moodledata
#sudo chmod -R 0770 /var/moodledata
