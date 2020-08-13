#!/bin/bash

# The UID variable is only available in bash
if [ $UID -ne 0 ]; then
	echo "This script needs to be run as root"
	exit 1
fi

echo "Disabling autostart"
if ! systemctl disable phosh-renice; then
	echo "Failed to disable the phosh-renice service, aborting"
	exit 1
fi

# This might be unneccesary and not work for one-shot services
echo "Stopping service"
if ! systemctl stop phosh-renice; then
	echo "Failed to stop the phosh-renice service, aborting"
	exit 1
fi

echo "Removing files..."
if ! rm /usr/local/sbin/phosh_renice; then
	echo "Failed to remove /usr/local/sbin/phosh_renice, aborting"
	exit 1
fi

if ! rm /etc/systemd/system/phosh-renice.service; then
	echo "Failed to remove /etc/systemd/system/phosh-renice.service, aborting"
	exit 1
fi

# Remove /usr/local/sbin if it's empty (probably created by the install script)
if [ -z /usr/local/sbin ]; then
	echo "Directory /usr/local/sbin is empty, removing..."
	if ! rm -r /usr/local/sbin; then
		echo "Failed to remove /usr/local/sbin, aborting"
		exit 1
	fi
fi

echo "Successfully uninstalled the phosh-renice service."

