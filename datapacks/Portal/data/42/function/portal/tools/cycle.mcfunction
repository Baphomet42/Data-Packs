tag @e remove 42.portal_temp
tag @e remove 42.portal_temp2

tag @e[tag=42.portal_btn,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_dropper,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pellet_emitter,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pellet_catcher,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_elevator,distance=..3.5] add 42.portal_temp

tag @e[tag=42.portal_temp,limit=1,sort=nearest] add 42.portal_temp2
tag @e remove 42.portal_temp

execute as @e[tag=42.portal_btn,tag=42.portal_temp2] at @s run function 42:portal/button/cycle
execute as @e[tag=42.portal_dropper,tag=42.portal_temp2] at @s run function 42:portal/dropper/cycle
execute as @e[tag=42.portal_pellet_emitter,tag=42.portal_temp2] at @s run function 42:portal/pellet/emitter/cycle
execute as @e[tag=42.portal_pellet_catcher,tag=42.portal_temp2] at @s run function 42:portal/pellet/catcher/cycle
execute as @e[tag=42.portal_elevator,tag=42.portal_temp2] at @s run function 42:portal/elevator/cycle

tag @e remove 42.portal_temp2
kill @s[type=area_effect_cloud]