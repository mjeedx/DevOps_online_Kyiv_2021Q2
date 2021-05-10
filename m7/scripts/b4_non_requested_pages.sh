#!/bin/bash

file_name=$1

grep " 404 " $file_name | awk '{print $7 "\t" $9}'
