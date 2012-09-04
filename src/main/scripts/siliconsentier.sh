#!/bin/bash
# set path to this folder.
home=`dirname "$0"`
# get path to generator jar inside $home folder
cp=$(find $home -name "org.ubimix.ebooks.generator-*.jar" | sort );

cd $home
libs="${home}/lib"
cp=""
for a in `ls ${libs}`
do
  cp="${cp}:${libs}/${a}"
done
java -Xms128m -Xmx512m -cp $cp org.ubimix.ebook.remote.apps.passageenseine.PasSageEnSeineApp siteTemplate siliconsentier siteIndexPage a5 "$@"
