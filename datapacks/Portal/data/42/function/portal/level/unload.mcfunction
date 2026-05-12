tag @e remove 42.tag.portal.temp
tag @e remove 42.tag.portal.temp1
tag @s add 42.tag.portal.temp1
execute as @a if score @s 42.obj.portal.lvl = @e[tag=42.tag.portal.temp1,limit=1] 42.obj.portal.lvl run tag @s add 42.tag.portal.temp
tag @s remove 42.tag.portal.temp
execute unless entity @a[tag=42.tag.portal.temp] run scoreboard players operation #42.var.portal.temp_lvl 42.obj.portal.temp = @s 42.obj.portal.lvl
execute unless entity @a[tag=42.tag.portal.temp] if score #42.var.portal.temp_lvl 42.obj.portal.temp matches 1.. run function 42:portal/level/loader/try_unload_all
scoreboard players set @s 42.obj.portal.lvl 0
tag @e remove 42.tag.portal.temp
tag @s remove 42.tag.portal.temp1
scoreboard players reset @s 42.obj.portal.death
function 42:portal/portal/clear
execute as @e[tag=42.tag.portal.elevator.main] at @s run function 42:portal/elevator/refresh_show_state