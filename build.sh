#!/bin/bash

yum -y install java-1.6.0-openjdk
yum -y install java-1.6.0-openjdk-devel
yum -y install git
yum -y install xorg-x11-xauth
yum -y install xorg-x11-fonts-*
yum -y install xorg-x11-utils
yum -y install which
yum -y install wget

antversion=1.7.1
wget http://archive.apache.org/dist/ant/binaries/apache-ant-${antversion}-bin.tar.gz
tar xvfvz apache-ant-${antversion}-bin.tar.gz -C /opt
ln -sfn /opt/apache-ant-${antversion} /opt/ant
sh -c 'echo ANT_HOME=/opt/ant >> /etc/environment'
ln -sfn /opt/ant/bin/ant /usr/bin/ant

# check installation
ant -version

#cleanup
rm apache-ant-${antversion}-bin.tar.gz