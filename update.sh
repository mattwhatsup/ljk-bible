#!/bin/sh

lang=$(echo "$1" | tr 'a-z' 'a-z')
nc=$2
if [ "$nc" = "-nc" ];
then
  source="./working/books/zh-$lang-n"
  target="./current/books/zh-$lang-n"
else
  source="./working/books/zh-$lang-c"
  target="./current/books/zh-$lang-c"
fi

cp -rf $source/* $target
cp -rf $source/OEBPS/Styles/* "./current/commons/Styles"
cp -rf $source/OEBPS/Fonts/* "./current/commons/Fonts/$lang"