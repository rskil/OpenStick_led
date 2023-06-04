#--------------------------------
# 参数介绍			#
#--------------------------------
# rfkill0	常亮
# heatbeat	有频率的闪烁

echo rfkill0 > /sys/class/leds/red\:os/trigger
echo heartbeat > /sys/class/leds/red\:os/trigger
