#!/bin/bash
## Ask for the location of Oneinstack
read -p "Please input the location of Oneinstack" one_install
read -p "Please input the domain of Pterodactyl installation" pter_install

#cat ${one_install}/options.conf | grep wwwroot_dir=/data/wwwroot 
one_www_root_path=$( cat ${one_install}/options.conf | grep wwwroot_dir=/data/wwwroot | cut 12  )
${{one_www_root_path}%=*}