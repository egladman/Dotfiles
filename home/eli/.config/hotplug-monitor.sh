export DISPLAY=:0.0
 
function connect(){
xrandr --output DP1 --auto --left-of eDP1
}
 
function disconnect(){
xrandr --output DP1 --off
}
 
xrandr | grep "DP1 connected" &> /dev/null && connect || disconnect
