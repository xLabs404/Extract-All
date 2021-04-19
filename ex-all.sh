#!/bin/bash

# This is just a simple BASH script that unzip all archives within the current directory!
# Note: The script takes the dir containing the archives as an input parameter!
# Note: You need install the package unar first => "sudo apt install unar"


# Changing our working directory to the one with the archives!
cd ${1}

# Just listing our archives to iterate over!
ls > archives.txt

# Just getting our list ready by deleting the first line!
sed -i '1d' ./archives.txt

cat archives.txt
echo "Unzipping..."

while read a; 
do
  unar -d $a
done < archives.txt

echo "Done!"






