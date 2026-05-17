scoreboard players operation #42.var.portal.loader_lvl 42.obj.portal.temp = @s 42.obj.portal.lvl
data remove storage 42:portal loader
execute store result storage 42:portal loader.lvl int 1 run scoreboard players get #42.var.portal.loader_lvl 42.obj.portal.temp
function 42:portal/level/loader/storage/get_level with storage 42:portal loader
execute if data storage 42:portal loader.temp_level unless data storage 42:portal loader.temp_level{format:1} run return run function 42:portal/level/loader/format_error
execute if data storage 42:portal tick run data modify storage 42:portal tick.action.unload_all set from storage 42:portal loader.lvl

scoreboard players set #42.var.portal.loader.equipment_count 42.obj.portal.temp 0
execute if data storage 42:portal loader.temp_level.equipment_count store result score #42.var.portal.loader.equipment_count 42.obj.portal.temp run data get storage 42:portal loader.temp_level.equipment_count

execute as @e[tag=42.tag.portal.pellet] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/pellet/pellet/fizzle_silent
execute as @e[tag=42.tag.portal.cube.main] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/cube/fizzle_silent
execute as @e[tag=42.tag.portal.portal] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/portal/fizzle
execute as @e[tag=42.tag.portal.zone] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run tag @s remove 42.tag.portal.zone.cool
execute as @e[tag=42.tag.portal.gel] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/gel/fizzle
execute as @a if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp run scoreboard players set @s 42.obj.portal.lvl 0

execute as @e[tag=42.tag.portal.btn] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/button/unload
execute as @e[tag=42.tag.portal.pedestal] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/button/unload_pedestal
execute as @e[tag=42.tag.portal.cube.spawner] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/cube/spawner/unload
execute as @e[tag=42.tag.portal.door] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/door/unload
execute as @e[tag=42.tag.portal.vent] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/vent/unload
execute as @e[tag=42.tag.portal.grill] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/grill/unload
execute as @e[tag=42.tag.portal.faith_plate] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/faith_plate/unload
execute as @e[tag=42.tag.portal.pellet.emitter] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/pellet/emitter/unload
execute as @e[tag=42.tag.portal.pellet.catcher] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/pellet/catcher/unload
execute as @e[tag=42.tag.portal.pellet.spawner] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/pellet/spawner/unload
execute as @e[tag=42.tag.portal.gel.spawner] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/gel/spawner/unload
execute as @e[tag=42.tag.portal.laser.emitter] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/laser/emitter/unload
execute as @e[tag=42.tag.portal.laser.catcher] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/laser/catcher/unload
execute as @e[tag=42.tag.portal.portal.spawner] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/portal/spawner/unload
execute as @e[tag=42.tag.portal.decal.basic] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/decal/unload
execute as @e[tag=42.tag.portal.decal.wire,tag=!42.tag.portal.decal.wire.lbl] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/decal/wire/unload
execute as @e[tag=42.tag.portal.decal.wire,tag=42.tag.portal.decal.wire.lbl] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run kill @s
execute as @e[tag=42.tag.portal.zone] if score @s 42.obj.portal.lvl = #42.var.portal.loader_lvl 42.obj.portal.temp at @s run function 42:portal/zone/unload

execute store result storage 42:portal loader.temp_level.equipment_count int 1 run scoreboard players get #42.var.portal.loader.equipment_count 42.obj.portal.temp
function 42:portal/level/loader/storage/save_level with storage 42:portal loader
data remove storage 42:portal loader

execute store result storage 42:portal current_unload_lvl int 1 run scoreboard players get @s 42.obj.portal.lvl
execute as @e[tag=42.tag.portal.elevator.main] at @s run function 42:portal/elevator/refresh_show_state
data remove storage 42:portal current_unload_lvl
data remove storage 42:portal tick.action.unload_all