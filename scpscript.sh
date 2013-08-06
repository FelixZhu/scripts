#!/bin/bash

SRC=""
DST=""

if [ "$1" = "" ] || [ "$2" = "" ];then
	echo "arg error!!"
	echo "scpacript src(like:/tmp.txt) des(1:10.13.95.47 or 2:10.13.94.204 ) "
	exit 0
fi

if [ -d "$1" ];then
	echo "directory, now i will pack it"
	echo "use tar -xvf to unpack it"
	tar -cvf $1.tar $1
	SRC=$1.tar
elif [ ! -f "$1" ];then
	echo "file doesnt existed!!"
	exit 0
else
	SRC=$1
fi

if [ "$2" = "1" ];then
    DST="root@10.13.95.47:/root/softwares/"
elif [ "$2" = "2" ];then
	DST="root@10.13.94.204:/root/softwares/"
else
	echo "arg2: 1 for 10.13.95.47 while 2 for 10.13.94.204"
	exit 0
fi

if [ -f ~/Documents/Develop/script/scpscript_expect.sh ];then
	chmod a+x ./scpscript_expect.sh
	./scpscript_expect.sh $SRC $DST
else
	scp $SRC $DST
fi

