execute as @e[tag=42.portal_cube_tp,distance=..2.5] at @s run function 42:portal/cube/fizzle
execute as @e[tag=42.portal_launch,distance=..2.5] at @s run function 42:portal/launch/fizzle
execute as @e[tag=42.portal_btn,distance=..2.5] at @s run function 42:portal/button/fizzle
execute as @e[tag=42.portal_pedestal,distance=..2.5] at @s run function 42:portal/button/fizzle_pedestal
execute as @e[tag=42.portal_door,distance=..2.5] at @s run function 42:portal/door/fizzle
execute as @e[tag=42.portal_dropper,distance=..2.5] at @s run function 42:portal/dropper/fizzle
execute as @e[tag=42.portal,distance=..2.5] at @s run function 42:portal/portal/fizzle
execute as @e[tag=42.portal_pellet_catcher,distance=..2.5] at @s run function 42:portal/pellet/catcher/fizzle
execute as @e[tag=42.portal_pellet_emitter,distance=..2.5] at @s run function 42:portal/pellet/emitter/fizzle
execute as @e[tag=42.portal_pellet,distance=..2.5] at @s run function 42:portal/pellet/pellet/fizzle
execute as @e[tag=42.portal_elevator,distance=..3.5] at @s run function 42:portal/elevator/fizzle
execute as @e[tag=42.portal_wire,distance=..1.5] at @s run function 42:portal/wire/fizzle
execute as @e[tag=42.portal_wire_unlinked,distance=..1.5] at @s run kill @s
execute as @e[tag=42.portal_spawner,distance=..2.5] at @s run function 42:portal/portal/spawner/fizzle
execute as @e[tag=42.portal_zone,tag=42.portal_zone_show,distance=..2.5] at @s run function 42:portal/zone/fizzle
kill @s[type=area_effect_cloud]