scoreboard players set @s 42.obj.portal.var.v -1
execute unless score @s 42.obj.portal.var.u matches 1.. run return fail

scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.var.u
tag @e remove 42.tag.portal.temp_portal_cycle
execute as @e[tag=42.tag.portal.portal.spawner] if score @s 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.temp run tag @s add 42.tag.portal.temp_portal_cycle
tag @s remove 42.tag.portal.temp_portal_cycle
execute if entity @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.temp_portal_cycle,limit=1] at @s run function 42:portal/portal/spawner/unpower
execute as @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.temp_portal_cycle,limit=1,sort=nearest] at @s run function 42:portal/portal/spawner/power
tag @e remove 42.tag.portal.temp_portal_cycle