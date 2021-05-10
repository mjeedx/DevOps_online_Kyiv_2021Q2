#!/bin/bash

file_name=$1
echo "Requests  User Agent"
grep bot apache_logs.txt  | awk -F\" '{print $6}' | sort | uniq -c
