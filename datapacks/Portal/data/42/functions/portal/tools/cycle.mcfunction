execute as @e[tag=42.portal_btn,distance=..2.5] at @s run function 42:portal/button/cycle
execute as @e[tag=42.portal_dropper,distance=..2.5] at @s run function 42:portal/dropper/cycle
execute as @e[tag=42.portal_pellet_emitter,distance=..2.5] at @s run function 42:portal/pellet/emitter/cycle
execute as @e[tag=42.portal_pellet_catcher,distance=..2.5] at @s run function 42:portal/pellet/catcher/cycle
kill @s[type=area_effect_cloud]