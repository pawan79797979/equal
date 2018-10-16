#!/bin/bash


sudo yum -y install  https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y update

#Installation Jenkins

sudo yum -y install java-1.8.0-openjdk.x86_64 wget firewalld ansible

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y install jenkins

sudo systemctl start firewalld
sudo firewall-cmd --permanent --add-port=8080/tcp
sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --reload
sudo systemctl enable jenkins

# Install Ansible
#sudo -s <<EOF
#yum -y install ansible
#EOF
