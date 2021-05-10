#!/bin/bash

file_name=$1

grep 302 $file_name | awk '{print $7 "\t" $9}'
