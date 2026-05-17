scoreboard players operation #42.var.portal.temp_unpower 42.obj.portal.temp = @s 42.obj.portal.xrot2

execute as @e[tag=42.tag.portal.vent,tag=42.tag.portal.vent.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/vent/unpower
execute as @e[tag=42.tag.portal.decal.wire] if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/decal/wire/unpower
execute as @e[tag=42.tag.portal.door,tag=42.tag.portal.door.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/door/unpower
execute as @e[tag=42.tag.portal.laser.emitter,tag=42.tag.portal.laser.emitter.on] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/laser/emitter/unpower
execute as @e[tag=42.tag.portal.portal.spawner] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/portal/spawner/unpower
execute as @e[tag=42.tag.portal.cube.spawner] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/cube/spawner/unpower
execute as @e[tag=42.tag.portal.pellet.spawner] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/pellet/spawner/unpower
execute as @e[tag=42.tag.portal.gel.spawner] at @s if score @s 42.obj.portal.link = #42.var.portal.temp_unpower 42.obj.portal.temp run function 42:portal/gel/spawner/unpower