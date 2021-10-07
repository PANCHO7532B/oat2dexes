#!/bin/bash
if [ ! -d "./build" ]; then
    mkdir build
fi
gcc -o build/oat2dexes -Wall oat2dexes.c
exit