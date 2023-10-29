tag @e remove 42.portal_temp
tag @e remove 42.portal_temp2
#
tag @e[tag=42.portal_cube_tp,tag=42.portal_cube1,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_cube_tp,tag=42.portal_turret,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_dropper,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_wire,distance=..1.5] add 42.portal_temp
tag @e[tag=42.portal_spawner,distance=..2.5] add 42.portal_temp
#
tag @e[tag=42.portal_temp,limit=1,sort=nearest] add 42.portal_temp2
tag @e remove 42.portal_temp
#
execute as @e[tag=42.portal_cube_tp,tag=42.portal_temp2] at @s run function 42:portal/cube/skin
execute as @e[tag=42.portal_dropper,tag=42.portal_temp2] at @s run function 42:portal/dropper/skin
execute as @e[tag=42.portal_wire,tag=42.portal_temp2] at @s run function 42:portal/wire/skin
execute as @e[tag=42.portal_spawner,tag=42.portal_temp2] at @s run function 42:portal/portal/spawner/skin_portal
#
tag @e remove 42.portal_temp2
kill @s[type=area_effect_cloud]