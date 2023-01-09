#!/bin/sh

lang=$(echo "$1" | tr 'a-z' 'a-z')
nc=$2
if [ "$nc" = "-nc" ];
then
  source="./current/books/zh-$lang-n/*"
  target="./working/books/zh-$lang-n"
else
  source="./current/books/zh-$lang-c/*"
  target="./working/books/zh-$lang-c"
fi

rm -rf $target && mkdir -p $target && cp -rf $source "$_"