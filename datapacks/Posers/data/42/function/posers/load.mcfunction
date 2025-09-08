scoreboard objectives add poser trigger
scoreboard objectives add 42.obj.posers.id dummy
scoreboard objectives add 42.obj.posers.var dummy
scoreboard objectives add 42.obj.posers.scale dummy

function 42:gen/config/posers/reload
function 42:posers/tick

# println load
#tellraw @a "42:posers/load"