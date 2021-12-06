#!/bin/sh
#find names of all soft-links on VM
find / -type l -ls >> /home/vagrant/soft_links.txt

#find count of block and character devices
find / -type c -or -type b | wc -l >> /home/vagrant/count_cb_devices.txt

#find all folders with Sticky bit
find / -type d -perm /1000 -ls >> /home/vagrant/folders_sticky_bit.txt

#make soft link for /etc/hostname in /tmp folder
ln -s /etc/hostname vvagrant dest/tmp/link

#create user “testuser”
useradd testuser

#create file in home directory “testuser_data” owned by “testuser”
sudo -u testuser touch "/home/testuser/testuser_data"