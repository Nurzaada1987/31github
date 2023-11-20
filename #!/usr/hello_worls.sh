#!/usr/bin/env bash

# ======================================================================
# SCRIPT NAME: systeminfo.sh

# PURPOSE: Demonstrate simple Bash programming concepts

# REVISION HISTORY:

# AUTHOR				DATE			DETAILS
# --------------------- --------------- --------------------------------
# Omorov A. 	     2023-07-18	        Initial version

# LICENSE: CC Attribution-Omorov Inc. International
# ======================================================================


echo "Starting to run the script..."

# VARIABLE ASSIGNMENT
# Show hostname:

HOST=$(hostname)

# User executing the script:
CURRENTUSER=$(whoami)

# Current date:
CURRENTDATE=$(date +%F)

# Host IP address:
IPADDRESS=$(hostname -I | cut -d ' ' -f1)

# SHOW MESSAGES
echo "Today is $CURRENTDATE"

echo "Hostname: $HOST ($IPADDRESS)"

echo "User info for $CURRENTUSER:"

grep $CURRENTUSER /etc/passwd

echo "Current process id for this $$"
exit 127

echo "If I can reach my hello world from here that would be awesome => " $HELLO_WORLD
