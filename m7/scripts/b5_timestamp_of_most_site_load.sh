#!/bin/bash

file_name=$1
echo "Requests  Timestamp"
more apache_logs.txt | awk '{print $4}' | sort | uniq -c | sort -gr | head -n 1
