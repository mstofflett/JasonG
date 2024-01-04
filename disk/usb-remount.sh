#!/bin/bash

echo "\nList Disks"
fdisk -l

echo "\nEnter Disk to remount (usually /dev/sdb2 or /dev/sdc2)"
read usb_drive
echo "\nMount USB Drive to /media/usbdrive"
mount $usb_drive /media/usbdrive
echo "\nDone!"

