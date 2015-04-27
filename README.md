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
    * Updates the Linux Box
* yum -y groupinstall "Development Tools"
    * Installs Development Tools package in Linux Box
* yum -y install curl imagemagick git python-software-properties
    * Installs some server stuff and python 
* yum -y install gcc gcc-c++
    * Installs the GCC compiler for C++
* yum -y install nodejs npm 
    * Install NodeJS and the NPM Manager 
* su vagrant
    * Logs in as super user to install Metor 
    * curl https://install.meteor.com | /bin/sh


## Running Meteor and Installing the base stuff 

1.  SSH into the Vagrant box and do the following tasks 
    * meteor create testApp
    * cd testApp/.meteor
    * cd ~ 
    * mkdir -p testApp/.meteor/local
    * sudo mount --bind /home/vagrant/testApp/.meteor/local/ /vagrant/testApp/.meteor/local/
2. To Start the Meteor Project 
    * cd /vagrant/myApp
    * meteor
3. Terminal should say that your app is running on Localhost:3000 

## To Start and Stop Meteor Apps and Vagrant Machine 

1. Vagrant Machine 
    * vagrant up will start the machine 
    * vagrant suspend will shut down the machine 
2. The Meteor App 
    * Vagrant ssh to get into the box 
    * cd /vagrant/testApp  >> This will get you in the directory to start the app 
    * meteor will fire up the app in localhost:3000 
    * this will translate the forwarded port in the vagrant file, which in this case is also localhost:3000  

