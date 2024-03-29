#!/bin/bash
#
# Automate Raspberry Pi Backups
# https://github.com/kallsbo/BASH-RaspberryPI-System-Backup
# https://www.raspberrypi.org/forums/viewtopic.php?t=46911
#
# Usage: system_backup.sh {path} {days of retention}
#
# Below you can set the default values if no command line args are sent.
# The script will name the backup files {$HOSTNAME}.{YYYYmmdd}.img.gz
# When the script deletes backups older then the specified retention
# it will only delete files with it's own $HOSTNAME.

# Redirect output
exec >>/media/sda1/backup.log
exec 2>&1

echo "=============== Start Raspi Backup ==============="
echo $(date "+%Y-%m-%d %H:%M:%S") UTC
echo

# Declare vars and set standard values
backup_path=/media/sda1/backup
retention_days=30

# Check that we are root!
if [[ ! $(whoami) =~ "root" ]]; then
	echo ""
	echo "**********************************"
	echo "*** This needs to run as root! ***"
	echo "**********************************"
	echo ""
	exit
fi

# Check to see if we got command line args
if [ ! -z $1 ]; then
	backup_path=$1
fi

if [ ! -z $2 ]; then
	retention_days=$2
fi

# Create trigger to force file system consistency check if image is restored
touch /boot/forcefsck

# Perform backup
dd bs=4M if=/dev/mmcblk0 | gzip >$backup_path/$HOSTNAME.$(date +%Y%m%d).img.gz
# Restore
# gzip -dc $backup_path/$HOSTNAME.{YYYYmmdd}.img.gz | dd bs=4M of=/dev/mmcblk0

# Remove fsck trigger
rm /boot/forcefsck

# Delete old backups
find $backup_path/$HOSTNAME.*.img.gz -mtime +$retention_days -type f -delete

echo
echo $(date "+%Y-%m-%d %H:%M:%S") UTC
echo "=================== Finished ====================="
echo
