#!/bin/bash
echo "Today is " `date`
echo -e "\nList Drives"
fdisk -l

echo -e "\nenter device path (usually sdb2 or sdc2)"
read usb_drive

echo -e "\n you path has the following files and folders: "
ls $usb_drive