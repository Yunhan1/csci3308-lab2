#!/bin/bash
# Authors :Yunhan Yang 
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a filename: "
read filename
echo "Enter a regex: "
read regex

grep $regex $filename
echo "phone:"
grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' $1
grep -o '303-[0-9]\{3\}\-[0-9]\{4\}' $1>phone_results.txt

echo "email:"
grep -E -c "[A-Za-z0-9_\-\.]+@[A-Za-z0-9_\-\.]+\.[A-Za-z]{2,6}$" $1
grep -E -o "[A-Za-z0-9_\-\.]+@geocities.com" $1>email_reslts.txt

grep $2 $1>command_results.txt
