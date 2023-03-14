#!/bin/bash
sudo touch /etc/apt/sources.list.d/nc_bionic.list
sudo bash -c "echo 'deb http://yumsrv03cn.netcracker.com/deb/ubuntu/ bionic main restricted
deb http://yumsrv03cn.netcracker.com/deb/ubuntu/ bionic-updates main restricted
deb http://yumsrv03cn.netcracker.com/deb/ubuntu/ bionic universe
deb http://yumsrv03cn.netcracker.com/deb/ubuntu/ bionic-updates universe
deb http://yumsrv03cn.netcracker.com/deb/ubuntu/ bionic multiverse
deb http://yumsrv03cn.netcracker.com/deb/ubuntu/ bionic-updates multiverse
deb http://yumsrv03cn.netcracker.com/deb/ubuntu/ bionic-backports main restricted universe multiverse' >> /etc/apt/sources.list.d/nc_bionic.list"
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2 && sudo systemctl enable apache2
sudo bash -c 'echo         "ens4:
          dhcp4: yes
          dhcp4-overrides:
            use-routes: false" >> /etc/netplan/50-cloud-init.yaml