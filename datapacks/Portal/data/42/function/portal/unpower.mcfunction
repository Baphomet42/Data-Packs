scoreboard players set #42.var.portal.temp_unpower 42.obj.portal.temp -2
execute if score @s 42.obj.portal.link matches 1.. run scoreboard players operation #42.var.portal.temp_unpower 42.obj.portal.temp = @s 42.obj.portal.link
tag @e remove 42.tag.portal.temp
execute as @e[tag=42.tag.portal.btn.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run tag @s add 42.tag.portal.temp
execute as @e[tag=42.tag.portal.pellet.catcher.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run tag @s add 42.tag.portal.temp
execute as @e[tag=42.tag.portal.pedestal,scores={42.obj.portal.time=2..}] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run tag @s add 42.tag.portal.temp
scoreboard players set @s 42.obj.portal.temp 0
execute at @e[tag=42.tag.portal.temp] run scoreboard players add @s 42.obj.portal.temp 1
tag @e remove 42.tag.portal.temp

execute unless score @s 42.obj.portal.temp matches 1.. as @e[tag=42.tag.portal.dropper,tag=42.tag.portal.dropper.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/dropper/unpower
execute unless score @s 42.obj.portal.temp matches 1.. as @e[tag=42.tag.portal.wire] if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/wire/unpower
execute unless score @s 42.obj.portal.temp matches 1.. as @e[tag=42.tag.portal.door,tag=42.tag.portal.door.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/door/unpower

execute unless score @s 42.obj.portal.temp matches 1.. unless entity @s[tag=42.tag.portal.pedestal] as @e[tag=42.tag.portal.portal.spawner] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/portal/spawner/unpower