#!/bin/bash

file_name=$1
echo Requests,  page
more $file_name | awk '{print $7}' | sort | uniq -c | sort -gr | head -n 1
