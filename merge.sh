#!/bin/sh

lang=$(echo "$1" | tr 'a-z' 'a-z')
nc=$2
if [ "$nc" = "-nc" ];
then
  book="./working/books/zh-$lang-n"
else
  book="./working/books/zh-$lang-c"
fi
styles="./working/commons/Styles/*"
fonts="./working/commons/Fonts/$lang/*"

cp -rf $styles "$book/OEBPS/Styles"
cp -rf $fonts "$book/OEBPS/Fonts"