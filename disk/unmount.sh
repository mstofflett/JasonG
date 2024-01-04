#!/bin/bash

echo "\nList Mount Points"
ls /media

echo "\nEnter Drive to Unmount (usually /media/usbdrive)"
read usb_drive
umount $usb_drive
echo "\nDone!"
