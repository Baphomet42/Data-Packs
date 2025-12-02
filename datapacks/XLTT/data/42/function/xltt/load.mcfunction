scoreboard objectives add 42menu trigger

scoreboard objectives add 42.obj.xltt.odm_use dummy
scoreboard objectives add 42.obj.xltt.odm_cooldown dummy
scoreboard objectives add 42.obj.xltt.odm_time dummy
scoreboard objectives add 42.obj.xltt.odm_motion dummy
scoreboard objectives add 42.obj.xltt.id dummy
scoreboard objectives add 42.obj.xltt.temp dummy
scoreboard objectives add 42.obj.xltt.odm_x dummy
scoreboard objectives add 42.obj.xltt.odm_y dummy
scoreboard objectives add 42.obj.xltt.odm_z dummy
scoreboard objectives add 42.obj.xltt.titan_time dummy
scoreboard objectives add 42.obj.xltt.vars dummy

function 42:gen/config/xltt/reload
function 42:xltt/tick
schedule function 42:42menu 1t replace

# println load
#tellraw @a "42:xltt/load"