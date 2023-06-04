# 99s后关闭灯光
sleep 99

# 关闭蓝色led灯
echo usb-gadget > /sys/class/leds/blue\:wifi/trigger

# 关闭红色led灯
echo usb-gadget > /sys/class/leds/red\:os/trigger

# 关闭绿色led灯
echo usb-gadget > /sys/class/leds/green\:internet/trigger
