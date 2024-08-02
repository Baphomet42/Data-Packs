scoreboard players operation 42.portal_loader_lvl 42.portal_temp = @s 42.portal_lvl
data remove storage 42:portal loader
execute store result storage 42:portal loader.lvl int 1 run scoreboard players get 42.portal_loader_lvl 42.portal_temp
function 42:portal/level/loader/storage/get_level with storage 42:portal loader

execute as @e[tag=42.portal_pellet] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/pellet/pellet/fizzle_silent
execute as @e[tag=42.portal_cube_tp] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/cube/fizzle_silent
execute as @e[tag=42.portal] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/portal/fizzle
execute as @e[tag=42.portal_zone] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run tag @s remove 42.portal_zone_cool

execute as @e[tag=42.portal_btn] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/button/unload
execute as @e[tag=42.portal_pedestal] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/button/unload_pedestal
execute as @e[tag=42.portal_cube_spawner] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/cube/spawner/unload
execute as @e[tag=42.portal_door] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/door/unload
execute as @e[tag=42.portal_dropper] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/dropper/unload
# todo elevator
execute as @e[tag=42.portal_grill] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/grill/unload
execute as @e[tag=42.portal_launch] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/launch/unload
execute as @e[tag=42.portal_pellet_emitter] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/pellet/emitter/unload
execute as @e[tag=42.portal_pellet_catcher] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/pellet/catcher/unload
execute as @e[tag=42.portal_pellet_spawner] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/pellet/spawner/unload
execute as @e[tag=42.portal_spawner] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/portal/spawner/unload
execute as @e[tag=42.portal_wire,tag=!42.portal_wire_lbl] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/wire/unload
execute as @e[tag=42.portal_wire,tag=42.portal_wire_lbl] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run kill @s
# todo zone

function 42:portal/level/loader/storage/save_level with storage 42:portal loader
data remove storage 42:portal loader