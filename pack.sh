#!/bin/sh

lang=$(echo "$1" | tr 'a-z' 'a-z')
nc=$2
if [ "$nc" = "-nc" ];
then
  book="./working/books/zh-$lang-n"
else
  book="./working/books/zh-$lang-c"
fi

cd $book
zip -q -r ../../../build/bible.$(echo $lang | tr 'a-z' 'a-z')$nc.epub ./*