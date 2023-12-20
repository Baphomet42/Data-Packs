tag @e remove 42.portal_loader_current
tag @s add 42.portal_loader_current
scoreboard players operation 42.portal_loader_lvl 42.portal_temp = @s 42.portal_lvl
data remove entity @s data.equipment
#
execute as @e[tag=42.portal_btn] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/button/unload
execute as @e[tag=42.portal_pedestal] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/button/unload_pedestal
# todo cube spawner
execute as @e[tag=42.portal_door] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/door/unload
execute as @e[tag=42.portal_dropper] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/dropper/unload
# todo elevator
execute as @e[tag=42.portal_grill] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/grill/unload
execute as @e[tag=42.portal_launch] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/launch/unload
execute as @e[tag=42.portal_pellet_emitter] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/pellet/emitter/unload
execute as @e[tag=42.portal_pellet_catcher] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/pellet/catcher/unload
# todo pellet spawner
execute as @e[tag=42.portal_spawner] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/portal/spawner/unload
execute as @e[tag=42.portal_wire,tag=!42.portal_wire_lbl] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run function 42:portal/wire/unload
execute as @e[tag=42.portal_wire,tag=42.portal_wire_lbl] if score @s 42.portal_lvl = 42.portal_loader_lvl 42.portal_temp at @s run kill @s
# todo zone
#
tag @e remove 42.portal_loader_current
data remove storage 42:portal loader