#!/bin/sh

if [ "$#" -ne 1 ] ; then
    echo "Error : please provide a program to deploy it's config"
    exit 1
fi

echo "Applying configuration for $1"
stow "$1" --target=$HOME
echo "Done"
