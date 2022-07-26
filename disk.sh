#!/bin/sh
dused=$(df -H|grep "^/dev/sda2"|awk '{print $5}'|sed 's/%//g')
echo $dused
if [ $dused -ge 70 ];then
  echo "The disk storage is used ${dused}%!"|mail -s "Alert: Disk Storage" yourmail@xxx.com
fi
