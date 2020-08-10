#!/bin/bash

# The UID variable is only available in bash
if [ $UID -ne 0 ]; then
	echo "This script needs to be run as root"
	exit 1
fi

if [ ! -d /usr/local/sbin ]; then
	echo "Directory /usr/local/sbin doesn't exist, creating..."
	if ! mkdir -p /usr/local/sbin; then
		echo "Failed to create /usr/local/sbin, aborting"
		exit 1
	fi
fi

echo "Copying files..."
if ! cp phosh_renice.sh /usr/local/sbin/phosh_renice; then
	echo "Failed to copy phosh_renice.sh, aborting"
	exit 1
fi

if ! cp phosh-renice.service /etc/systemd/system/; then
	echo "Failed to copy phosh-renice.service, aborting"
	exit 1
fi

echo "Starting service"
if ! systemctl start phosh-renice; then
	echo "Failed to start the phosh-renice service, aborting"
	exit 1
fi

echo "Enabling autostart"
if ! systemctl enable phosh-renice; then
	echo "Failed to enable the phosh-renice service, aborting"
	exit 1
fi

echo "Successfully installed the phosh-renice service."

