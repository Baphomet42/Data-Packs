execute as @e[tag=42.portal_btn,distance=..2.5] at @s run function 42:portal/button/cycle
execute as @e[tag=42.portal_dropper,distance=..2.5] at @s run function 42:portal/dropper/cycle
execute as @e[tag=42.portal_pellet_emitter,distance=..2.5] at @s run function 42:portal/pellet/emitter/cycle
execute as @e[tag=42.portal_cube_tp,tag=42.portal_turret,distance=..2.5] at @s run function 42:portal/cube/turret/reset
kill @s[type=area_effect_cloud]