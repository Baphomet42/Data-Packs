scoreboard players operation #42.var.portal.loader_lvl 42.obj.portal.temp = @s 42.obj.portal.lvl
data remove storage 42:portal loader
execute store result storage 42:portal loader.lvl int 1 run scoreboard players get #42.var.portal.loader_lvl 42.obj.portal.temp
function 42:portal/level/loader/storage/get_level with storage 42:portal loader
execute if data storage 42:portal loader.temp_level unless data storage 42:portal loader.temp_level{format:1} run return run function 42:portal/level/loader/format_error
execute if data storage 42:portal tick run data modify storage 42:portal tick.action.load_all set from storage 42:portal loader.lvl

scoreboard players set #42.var.portal.loader.equipment_count 42.obj.portal.temp 0
execute if data storage 42:portal loader.temp_level.equipment_count store result score #42.var.portal.loader.equipment_count 42.obj.portal.temp run data get storage 42:portal loader.temp_level.equipment_count

tag @e remove 42.tag.portal.loader
tag @s add 42.tag.portal.loader

execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.btn[-1] run function 42:portal/level/loader/load/btn with storage 42:portal loader.temp_level.equipment.btn[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.pedestal[-1] run function 42:portal/level/loader/load/pedestal with storage 42:portal loader.temp_level.equipment.pedestal[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.cube_spawner[-1] run function 42:portal/level/loader/load/cube_spawner with storage 42:portal loader.temp_level.equipment.cube_spawner[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.door[-1] run function 42:portal/level/loader/load/door with storage 42:portal loader.temp_level.equipment.door[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.vent[-1] run function 42:portal/level/loader/load/vent with storage 42:portal loader.temp_level.equipment.vent[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.grill[-1] run function 42:portal/level/loader/load/grill with storage 42:portal loader.temp_level.equipment.grill[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.faith_plate[-1] run function 42:portal/level/loader/load/faith_plate with storage 42:portal loader.temp_level.equipment.faith_plate[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.pellet_emitter[-1] run function 42:portal/level/loader/load/pellet_emitter with storage 42:portal loader.temp_level.equipment.pellet_emitter[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.pellet_catcher[-1] run function 42:portal/level/loader/load/pellet_catcher with storage 42:portal loader.temp_level.equipment.pellet_catcher[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.pellet_spawner[-1] run function 42:portal/level/loader/load/pellet_spawner with storage 42:portal loader.temp_level.equipment.pellet_spawner[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.gel_spawner[-1] run function 42:portal/level/loader/load/gel_spawner with storage 42:portal loader.temp_level.equipment.gel_spawner[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.laser_emitter[-1] run function 42:portal/level/loader/load/laser_emitter with storage 42:portal loader.temp_level.equipment.laser_emitter[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.laser_catcher[-1] run function 42:portal/level/loader/load/laser_catcher with storage 42:portal loader.temp_level.equipment.laser_catcher[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.portal_spawner[-1] run function 42:portal/level/loader/load/portal_spawner with storage 42:portal loader.temp_level.equipment.portal_spawner[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.decal[-1] run function 42:portal/level/loader/load/decal with storage 42:portal loader.temp_level.equipment.decal[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.wire[-1] run function 42:portal/level/loader/load/wire with storage 42:portal loader.temp_level.equipment.wire[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.zone[-1] run function 42:portal/level/loader/load/zone with storage 42:portal loader.temp_level.equipment.zone[-1]

tag @s remove 42.tag.portal.loader
execute if data storage 42:portal loader.error run function 42:portal/level/loader/storage/load_error with storage 42:portal loader

execute store result storage 42:portal loader.temp_level.equipment_count int 1 run scoreboard players get #42.var.portal.loader.equipment_count 42.obj.portal.temp
function 42:portal/level/loader/storage/save_level with storage 42:portal loader
data remove storage 42:portal loader

execute store result storage 42:portal current_load_lvl int 1 run scoreboard players get @s 42.obj.portal.lvl
execute as @e[tag=42.tag.portal.elevator.main] at @s run function 42:portal/elevator/refresh_show_state
data remove storage 42:portal current_load_lvl
data remove storage 42:portal tick.action.load_all