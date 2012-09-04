#!/bin/bash

serverUrl=$1
if [ "${serverUrl}" == "" ]; then
    echo "Server URL is not defined"
    return -1;
fi

dir=`pwd`
workspace=${dir}/../../

scp ${workspace}/ubimix.ebook/projects/org.ubimix.ebook.generator/target/org.ubimix.ebook.generator-*-bin.zip ${serverUrl}

