#!/bin/bash
for x in $(ls -d */)
do 
    echo "Updating $x..."
    cd $x
    git pull origin master 
    cd ..
done 
