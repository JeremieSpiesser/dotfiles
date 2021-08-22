#!/bin/sh

if [ "$#" -ne 1 ] ; then
    echo "Error : please provide a program to remove it's config"
    exit 1
fi

echo "Removing configuration for $1"
stow -D "$1" --target=$HOME
echo "Done"
