scoreboard objectives add 42.obj.datapack dummy
scoreboard objectives add 42menu trigger

scoreboard objectives add 42.obj.xltt.click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add 42.obj.xltt.odm_time dummy
scoreboard objectives add 42.obj.xltt.id dummy
scoreboard objectives add 42.obj.xltt.temp dummy
scoreboard objectives add 42.obj.xltt.odm_x dummy
scoreboard objectives add 42.obj.xltt.odm_y dummy
scoreboard objectives add 42.obj.xltt.odm_z dummy
scoreboard objectives add 42.obj.xltt.titan_time dummy
scoreboard objectives add 42.obj.xltt.vars dummy

function 42:gen/config/xltt/reload
function 42:xltt/tick
function 42:42menu

# println load
#tellraw @a "42:xltt/load"