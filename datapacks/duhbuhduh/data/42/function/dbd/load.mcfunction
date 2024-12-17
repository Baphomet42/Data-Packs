scoreboard objectives add 42.obj.datapack dummy
scoreboard objectives add 42menu trigger

function 42:gen/config/dbd/reload
function 42:dbd/tick
schedule function 42:42menu 1t replace

# println load
#tellraw @a "42:dbd/load"