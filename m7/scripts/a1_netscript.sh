#!/bin/bash

function show_ports  # grep only open TCP ports
{
	echo "There are next open ports:"
	ss -tan | awk '{print $4}' | sort -u
}

function scan_net { # Scanning net using nmap and shows active ip addresses
	addr=$1
	nmap -sn $addr | awk 'NR % 2 == 0 {print $5}' | head -n -1 > nmapOut.txt
	count=`wc nmapOut.txt | awk '{print $1}'`
	echo There are $count IP in $addr network:
	more nmapOut.txt
	rm nmapOut.txt
}

if [[ "$#" == "0" ]] # Print default output without parameters
then
        echo "This script usefull for scanning local subnet and watch open tcp ports"
	echo -e "--all \n   This key scans local network, shows ip addresses and symbolic names"
	echo -e "--target network \n   This key shows list of open TCP ports"
        exit 0
fi

if [ "$1" == "--all" ]
then
	show_ports    # Function launch

elif [ "$1" == "--target" ]
then
	scan_net $2   # Function launch
fi

