#!/bin/bash

sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y update

sudo yum -y install java-1.8.0-openjdk.x86_64 wget firewalld

#Installing Tomcat 8
cd /opt
sudo wget http://mirrors.fibergrid.in/apache/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz
sudo tar xvfz apache-tomcat-8.5.34.tar.gz
cd /opt/apache-tomcat-8.5.34/bin

sudo chmod +x *
sudo ./startup.sh
