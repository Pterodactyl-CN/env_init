#!/bin/bash

## For EPEL Repo 

echo "Installing EPEL Repo"
sudo yum install -y epel-release
sudo sed -e 's!^mirrorlist=!#mirrorlist=!g' \
         -e 's!^#baseurl=!baseurl=!g' \
         -e 's!//download\.fedoraproject\.org/pub!//mirrors.ustc.edu.cn!g' \
         -e 's!http://mirrors\.ustc!https://mirrors.ustc!g' \
         -i /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel-testing.repo

## For Repos using by Pterodactyl

echo "Installing Repos using by Pterodactyl"
		 
mv docker-ce.repo /etc/yum.repos.d/
mv nodesource-el.repo /etc/yum.repos.d/
mv CentOS-USTC-Base.repo /etc/yum.repos.d/
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
sh node-tuna-gpg.sh