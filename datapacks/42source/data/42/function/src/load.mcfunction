scoreboard objectives add 42.obj.datapack dummy
scoreboard objectives add 42menu trigger

scoreboard objectives add 42.obj.src.time dummy
scoreboard objectives add 42.obj.src.wfoas minecraft.used:minecraft.warped_fungus_on_a_stick

function 42:gen/config/src/reload
function 42:src/tick
schedule function 42:42menu 1t replace

# println load
#tellraw @a "42:src/load"