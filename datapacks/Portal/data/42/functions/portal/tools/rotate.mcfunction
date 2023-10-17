tag @e remove 42.portal_temp
tag @e remove 42.portal_temp2
#
tag @e[tag=42.portal_launch,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pedestal,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_door,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pellet_emitter,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pellet_catcher,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_cube_tp,distance=..2.5] add 42.portal_temp
#
tag @e[tag=42.portal_temp,limit=1,sort=nearest] add 42.portal_temp2
tag @e remove 42.portal_temp
#
execute as @e[tag=42.portal_launch,tag=42.portal_temp2] run function 42:portal/launch/rotate
execute as @e[tag=42.portal_pedestal,tag=42.portal_temp2] run function 42:portal/button/rotate_pedestal
execute as @e[tag=42.portal_door,tag=42.portal_temp2] at @s run function 42:portal/door/rotate
execute as @e[tag=42.portal_pellet_emitter,tag=42.portal_temp2] at @s run function 42:portal/pellet/emitter/rotate
execute as @e[tag=42.portal_pellet_catcher,tag=42.portal_temp2] at @s run function 42:portal/pellet/catcher/rotate
execute as @e[tag=42.portal_cube_tp,tag=42.portal_temp2] at @s run function 42:portal/cube/rotate
#
tag @e remove 42.portal_temp2
kill @s[type=area_effect_cloud]