#!/bin/bash
sudo find / -type l -exec ls -la '{}' \;

echo "find and print count of block and character devices"
find / -type b -or -type c | wc -l

echo "find all folders with Sticky bit"
sudo find / -type d -perm -1000 -exec ls -ld {} \;

echo "make soft link for /etc/hostname in /tmp folder"
sudo ln -s /etc/hostname /tmp/hostname_new
sudo find /tmp -type l

echo "create user “testuser”"
sudo adduser testuser
id testuser

echo "create file in home directory “testuser_data” owned by “testuser”"
sudo mkdir /home/testuser_data
cd /home/testuser_data
sudo touch new_file
ls -l new_file
sudo chown testuser new_file
ls -l new_file