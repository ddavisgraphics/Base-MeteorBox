# Base Development Box
___

## Dependencies 

* Virtual Box
* Vagrant 
* A Vagrant Box 

## Vagrant File 

Thanks to the vagrant cloud people who provided the base box for this repo. File creates the base boxs information and determines port forwarding.  
	

## Bootstrap.sh 

* yum -y update
** Updates the Linux Box
* yum -y groupinstall "Development Tools"
** Installs Development Tools package in Linux Box
* yum -y install curl imagemagick git python-software-properties
** Installs some server stuff and python 
* yum -y install gcc gcc-c++
** Installs the GCC compiler for C++
* yum -y install nodejs npm 
** Install NodeJS and the NPM Manager 
* su vagrant
** Logs in as super user to install Metor 
** curl https://install.meteor.com | /bin/sh


## Running Meteor and Installing the base stuff 

1.  SSH into the Vagrant box and do the following tasks 
* meteor create testApp
* cd testApp/.meteor
* cd ~ 
* mkdir -p testApp/.meteor/local
* sudo mount --bind /home/vagrant/myApp/.meteor/local/ /vagrant/myApp/.meteor/local/

2. To Start the Meteor Project 
* cd /vagrant/myApp
* meteor

3. Terminal should say that your app is running on Localhost:3000 
