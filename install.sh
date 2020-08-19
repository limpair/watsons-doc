#!/bin/bash
sdb=`lsblk /dev/sdb | grep -v NAME | wc -l`
sdc=`lsblk /dev/sdc | grep -v NAME | wc -l`
sdd=`lsblk /dev/sdd | grep -v NAME | wc -l`
use=""
if   [ $sdc -eq 1 ];then
    use="sdc"
elif [ $sdd -eq 1 ];then
    use="sdd"
elif [ $sdb -eq 1 ];then
    use="sdb"
fi
#echo $use

 
