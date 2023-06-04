#!/bin/bash

# 先一直常亮 red and green 两个灯
echo rfkill0 > /sys/class/leds/green\:internet/trigger
echo rfkill0 > /sys/class/leds/red\:os/trigger

for ((;;))
do

net_status=`curl -I -s --connect-timeout 5 www.baidu.com -w %{http_code} |tail -n1`

if [ $net_status -eq 200 ];then

     # 关闭蓝色led灯
     echo usb-gadget > /sys/class/leds/blue\:wifi/trigger

     # 关闭红色led灯
     echo usb-gadget > /sys/class/leds/red\:os/trigger

     # 关闭绿色led 灯
     echo usb-gadget > /sys/class/leds/green\:internet/trigger

     # 跳出循环
     break

else 
     echo -n '.'
     # 等待3s
     sleep 3
fi
done

