#!/bin/bash
echo "Today is" `date`
echo "\nList Drives"
fdisk -l

echo "\nEnter device path (usually /dev/sdb2 or /dev/sdc2)"
read usb_drive
echo "\nDownload packages for exFAT support.."
wget http://ftp.us.debian.org/debian/pool/main/f/fuse/fuse_2.9.9-1+deb10u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/f/fuse-exfat/exfat-fuse_1.3.0-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/e/exfat-utils/exfat-utils_1.3.0-1_amd64.deb
echo "\nInstall packages for exFAT support.."
dpkg -i fuse_2.9.9-1+deb10u1_amd64.deb
dpkg -i exfat-fuse_1.3.0-1_amd64.deb
dpkg -i exfat-utils_1.3.0-1_amd64.deb
echo "\nCreate USB ThumbDrive with exFAT support.."
mkfs.exfat $usb_drive -n "3CXBackup"
echo "\nPrepare Directory and Set Permissions"
rm -rf /media/usbdrive
mkdir /media/usbdrive
chown -R phonesystem /media/usbdrive
echo "\nMount USB Drive to /media/usbdrive"
mount $usb_drive /media/usbdrive
echo "\nOperation Complete"
