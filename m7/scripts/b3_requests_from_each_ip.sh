#!/bin/bash

file_name=$1
echo "Requests IP addresses"
more $file_name | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort | uniq -c | sort -gr

