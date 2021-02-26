#Bootable USB Maker for Thakur OS
#By Demonkiller
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
cd out
sudo dd if=thakuros-$(date +%Y.%m.%d).iso of=/dev/sdb status='progress'


echo "D O N E! Your USB should be bootable now, with Thakur OS."
echo "Thank YOU!"

