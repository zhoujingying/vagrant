#! /bin/bash
#change apt source to be inside China to speed up apt
sudo mv /etc/apt/sources.list /etc/apt/sources.list.old
sudo cp /vagrant/sources.list /etc/apt/sources.list

#prepare for jenkins installation
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update

#install openjdk
sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

#install jenkins
sudo apt-get -y install jenkins