#!/bin/sh

lang=$(echo "$1" | tr 'a-z' 'a-z')

source="./current/commons/Fonts/$lang/*"
target="./working/commons/Fonts/$lang"

rm -rf $target
mkdir -p $target
cp -rf $source $target