scoreboard objectives add 42.obj.datapack dummy
scoreboard objectives add 42menu trigger

scoreboard objectives add 42.obj.src.temp dummy
scoreboard objectives add 42.obj.src.time dummy
scoreboard objectives add 42.obj.src.gun.cooldown_time dummy
scoreboard objectives add 42.obj.src.gun.equip_instance dummy
scoreboard objectives add 42.obj.src.gun.reload_time dummy
scoreboard objectives add 42.obj.src.gun.use_time dummy

function 42:src/gun/data_setup

function 42:gen/config/src/reload
function 42:src/tick
schedule function 42:42menu 1t replace

# println load
#tellraw @a "42:src/load"