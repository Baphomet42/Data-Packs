execute as @e[tag=42.portal_launch,distance=..2.5] run function 42:portal/launch/rotate
execute as @e[tag=42.portal_pedestal,distance=..2.5] run function 42:portal/button/rotate_pedestal
execute as @e[tag=42.portal_door,distance=..2.5] at @s run function 42:portal/door/rotate
execute as @e[tag=42.portal_pellet_emitter,distance=..2.5] at @s run function 42:portal/pellet/emitter/rotate
execute as @e[tag=42.portal_pellet_catcher,distance=..2.5] at @s run function 42:portal/pellet/catcher/rotate
execute as @e[tag=42.portal_turret,tag=42.portal_cube_tp,distance=..2.5] at @s run function 42:portal/cube/turret/rotate
kill @s[type=area_effect_cloud]