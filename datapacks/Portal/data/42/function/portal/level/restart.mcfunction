scoreboard players reset @s 42.obj.portal.death
function 42:portal/portal/clear

execute unless score @s 42.obj.portal.lvl matches 1.. as @e[tag=42.tag.portal.elevator.main] at @s run function 42:portal/elevator/refresh_show_state
execute unless score @s 42.obj.portal.lvl matches 1.. run return fail

scoreboard players operation #42.var.portal.restart_lvl 42.obj.portal.temp = @s 42.obj.portal.lvl
function 42:portal/level/loader/try_unload_all

tag @e remove 42.tag.portal.temp.restart_level
execute as @e[tag=42.tag.portal.elevator.main] if score @s 42.obj.portal.var.b = #42.var.portal.restart_lvl 42.obj.portal.temp run tag @s add 42.tag.portal.temp.restart_level
execute as @e[tag=42.tag.portal.zone.mode.load] if score @s 42.obj.portal.var.b = #42.var.portal.restart_lvl 42.obj.portal.temp run tag @s add 42.tag.portal.temp.restart_level
execute if entity @e[tag=42.tag.portal.elevator.main,tag=42.tag.portal.temp.restart_level,tag=!42.tag.portal.elevator.tp,limit=1] run tag @e[tag=42.tag.portal.elevator.main,tag=42.tag.portal.temp.restart_level,tag=42.tag.portal.elevator.tp] remove 42.tag.portal.temp.restart_level
execute if entity @e[tag=42.tag.portal.elevator.main,tag=42.tag.portal.temp.restart_level,limit=1] run tag @e[tag=42.tag.portal.zone.mode.load,tag=42.tag.portal.temp.restart_level] remove 42.tag.portal.temp.restart_level

execute if entity @e[tag=42.tag.portal.temp.restart_level,limit=1] run scoreboard players operation @s 42.obj.portal.lvl = #42.var.portal.restart_lvl 42.obj.portal.temp
execute if entity @e[tag=42.tag.portal.temp.restart_level,limit=1] run function 42:portal/level/loader/try_load_all

execute as @e[tag=42.tag.portal.elevator.main] at @s run function 42:portal/elevator/refresh_show_state

execute unless entity @e[tag=42.tag.portal.temp.restart_level,limit=1] run tellraw @s {text:"42datapack error (3): Failed to restart Portal level. No checkpoint found.",color:"red"}
execute at @s run tp @s @e[tag=42.tag.portal.temp.restart_level,limit=1,sort=nearest]
tag @e remove 42.tag.portal.temp.restart_level