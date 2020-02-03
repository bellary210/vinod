#!/bin/bash

sudo apt-get update -y
sudo apt-get install nano curl wget vim -y

#Installation of Java:
sudo apt install openjdk-8-jdk -y
sudo gedit /etc/environment
export JAVA_HOME="/usr/lib/jvm"
source /etc/environment

#Installation of maven:
sudo apt-get install maven -y
sudo gedit /etc/environment
export M2_HOME="/usr/share/maven"
source /etc/environment

#Install of Git:
sudo apt-get install git -y

#Install of Docker:
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

#Install of Docker-compose:
sudo apt-get install docker-compose -y

#Installation of Nodejs:
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs -y

#Installation of mysql :
sudo apt-get -y install mysql*
mysql -u root -p Ojas1525
CREATE DATABASE artdb;
CREATE USER 'dbubora'@'%' IDENTIFIED BY 'Ojas-1525';
GRANT ALL PRIVILEGES ON *.* TO 'dbubora'@'%' IDENTIFIED BY 'Ojas-1525';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'Ojas-1525';
exit
sudo sed -i 's/172.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf




