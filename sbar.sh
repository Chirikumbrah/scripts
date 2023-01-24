#!/bin/env sh

# INIT
printf '..%s..' "$$" > ~/.cache/pidofbar
sec=0

# MODULES
update_cpu () { 
	TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
	cputemp="^c#8be9fd^ $((TEMP / 1000))°C"
}

update_memory () { 
	MEM="$(free -h | awk 'FNR==2{ print $3 }' | tr -d "i")"
	COLOR="^c#50fa7b^"
	ICON=""

	memory="$COLOR$ICON $MEM"
}

update_time () { 
	time="$(date "+[%a %d %b] [%I:%M %P]")" 
}

update_bat () { 
	# you might need to change the path depending on your device
	read -r bat_status </sys/class/power_supply/BAT1/status
	read -r bat_capacity </sys/class/power_supply/BAT1/capacity
	bat="$bat_status $bat_capacity%"
}

update_vol () { 
	VOL=$(pamixer --get-volume-human | tr -d '%')

	if [ "${VOL}" = "muted" ] || [ "${VOL}" = "0" ]; then
	    AUDIO=""
	else
	    AUDIO=" ${VOL}%"
	fi


	vol="^c#bd93f9^${AUDIO}"
}

update_mic () {
	statusLine=$(amixer get Capture | tail -n 1)
	status=$(echo "${statusLine}" | grep -wo "off")
	COLOR="^c#FF92DF^"

	if [ "${status}" = "off" ]; then
	      MIC=""
	else
	      MIC=""
	fi

	mic="$COLOR$MIC"
}

update_backlight () { 
	COLOR="^c#f1fa8c^"
	ICON=""
	BRIGHTNESS=$(xbacklight -get | cut -f1 -d'.')
	backlight="$COLOR$ICON ${BRIGHTNESS}%"
}

# For calcurse users, refer https://github.com/pystardust/automeet
# update_event () { 
# 	event="$(calcurse -n | sed 1d | \
# 		sed -E "s_^ *\[(.*):(.*)\] ([^\t]*)\t?.*_[\1h \2m->\3]_")" 
# 	[ "[]" = "$event" ] && event=""
# }


# modules that don't update on their own need to be run at the start for getting their initial value
update_mic
update_vol
update_backlight

display () { 
	#printf "%s\n" " $event [$weather] [$memory $cpu] [$bat] [$backlight] [$vol] $time "
  SEP="^c#ffffff^ | "
	xsetroot -name " $vol$SEP$mic$SEP$backlight$SEP$cputemp$SEP$memory$SEP$bat$SEP$time "
}

# SIGNALLING
# trap	"<function>;display"		"RTMIN+n"
trap	"update_vol;display"		"RTMIN"
trap	"update_backlight;display" 	"RTMIN+1"
trap	"update_bat;display" 		"RTMIN+2"
# to update it from external commands
## kill -m "$(cat ~/.cache/pidofbar)"
# where m = 34 + n

while true
do
	sleep 1 & wait && { 
		# to update item ever n seconds with a offset of m
		## [ $((sec % n)) -eq m ] && udpate_item
		[ $((sec % 5 )) -eq 0 ] && update_time 	# update time every 5 seconds
		[ $((sec % 15)) -eq 0 ] && update_cpu 	# update cpu every 15 seconds
		[ $((sec % 15)) -eq 0 ] && update_memory
		[ $((sec % 60)) -eq 0 ] && update_bat
		#[ $((sec % 300)) -eq 1 ] && update_event

		# how often the display updates ( 5 seconds )
		[ $((sec % 5 )) -eq 0 ] && display
		sec=$((sec + 1))
	}
done 

