scoreboard objectives add 42menu trigger

scoreboard objectives add poser trigger
scoreboard objectives add 42.obj.posers.var dummy
scoreboard objectives add 42.obj.posers.scale dummy

function 42:gen/config/posers/reload
function 42:posers/tick
schedule function 42:42menu 1t replace

# println load
#tellraw @a "42:posers/load"