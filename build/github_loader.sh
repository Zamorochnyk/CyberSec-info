#!/bin/bash
mkdir /tmp/unpack_tmp
cd /tmp/unpack_tmp

set -e
URL=https://api.github.com/repos/$1/releases/latest

NAME=$(echo "$1" | cut -d "/" -f2 )
curl -s "$URL" \
| grep -o "https.*linux_amd64.*[^\"]" \
| xargs curl -L -O

BIN_DIR=/usr/bin
if [[ "$2" != "" ]]
then
    $BIN_DIR=$2
fi

if [[ $(echo $NAME*)  == *.tar* ]] 
then
    tar xf $NAME* $NAME
    mv $NAME $BIN_DIR
fi

if [[ $(echo $NAME*) == *.zip ]] 
then
    unzip $NAME* $NAME -d $BIN_DIR
fi

chmod +x $BIN_DIR/$NAME*

cd ..
rm -d unpack_tmp