#Bootable USB Maker for Thakur OS
#By demonkiller
#NOTE 1: Put this script in the same folder which has the ISO

#Warning: Insert One USB at a time only. If you have any other USB either remove them from the system or change the script accordingly. Check size with lsblk (uncommment line 10 & 11).
echo "Welcome to Bootable USB Maker!"
echo "We are making Thakur OS Bootable USB, please wait..."
echo "                               "

#echo "Printing Partitions in Drive:" 
#lsblk

echo "unmounting drive..."
umount /dev/sdb*

echo "Checking for any mounted partitions & unmounting them...."
umount /dev/sdb*

echo "========================================================="
echo "Formatting with ext4.."
sudo mkfs.ext4 /dev/sdb

echo "USB is Formatted.."

echo "                               "
echo "================================================================"
echo "Making Thakur OS bootable ISO, this may take sometime...."
sudo dd if=/out/ of=/dev/sdb status='progress'
#NOTE 2: replace ubuntu-20.04-desktop-amd64.iso and you can use this script for making bootable USB of any other distribution.

echo "D O N E! Your USB should be bootable now, with Thakur OS."
echo "Thank YOU!"

