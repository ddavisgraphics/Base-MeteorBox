#!/bin/bash

echo "Developer Tools install"
yum -y update
yum -y groupinstall "Development Tools"
yum -y install curl imagemagick git python-software-properties
yum -y install gcc gcc-c++

# Node.js
# =======================================
echo "Installing Node & Npm"
yum -y install nodejs npm 

# Install Meteor
# =======================================
echo "Installing Vagrant" 
su vagrant # ssh into the box
curl https://install.meteor.com | /bin/sh
