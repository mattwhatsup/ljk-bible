#!/bin/sh

source="./current/commons/Styles/*"
target="./working/commons/Styles"

mkdir -p $target
cp -rf $source $target