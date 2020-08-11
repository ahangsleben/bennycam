#!/bin/bash
STARTDIR=$PWD

for directory in mjpg-streamer nginx noip
do
    echo "Building $directory"
    cd $directory
    ./setup.sh
    cd $STARTDIR
done
