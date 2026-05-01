scoreboard players set #42.var.portal.temp_power 42.obj.portal.temp -2
execute if score @s 42.obj.portal.link matches 1.. run scoreboard players operation #42.var.portal.temp_power 42.obj.portal.temp = @s 42.obj.portal.link

execute as @e[tag=42.tag.portal.wire] if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/wire/power
execute as @e[tag=42.tag.portal.door,tag=!42.tag.portal.door.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/door/power
execute as @e[tag=42.tag.portal.laser.emitter,tag=!42.tag.portal.laser.emitter.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/laser/emitter/power
execute as @e[tag=42.tag.portal.portal.spawner] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/portal/spawner/power
execute as @e[tag=42.tag.portal.cube.spawner] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/cube/spawner/power
execute as @e[tag=42.tag.portal.pellet.spawner] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/pellet/spawner/power

execute as @e[tag=42.tag.portal.vent,tag=42.tag.portal.vent.mode.gel,tag=!42.tag.portal.vent.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/vent/power
execute unless entity @s[tag=42.tag.portal.pedestal] as @e[tag=42.tag.portal.vent,tag=42.tag.portal.vent.mode.cube,tag=!42.tag.portal.vent.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/vent/power
execute if entity @s[tag=42.tag.portal.pedestal] as @e[tag=42.tag.portal.vent,tag=42.tag.portal.vent.mode.cube] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_power 42.obj.portal.temp run function 42:portal/vent/drop