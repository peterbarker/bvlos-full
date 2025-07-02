
if [ -z "$1" ]; then
    LOC="SpringValley2"
else
    LOC="$1"
fi
shift

nice python3 ../../Tools/autotest/sim_vehicle.py -D -G --aircraft test --vehicle ArduPlane -f quadplane -L $LOC --map $@ 2> /tmp/mavproxy_cliwarnings.log

#for ottano use SpringValley3
#for griffin pro use SpringValley2
#Custom (put in ~/.config/ardupilot/locations.txt): 
#MtTennent=-35.54994219,149.04469406,1369,0
#Shortcut=-35.30414085,148.89860101,649,180

#add --no-configure -N for no build or configure
