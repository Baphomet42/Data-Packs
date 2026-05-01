tag @e remove 42.tag.portal.temp
tag @e remove 42.tag.portal.temp2

tag @e[tag=42.tag.portal.btn,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.vent,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.pellet.emitter,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.pellet.catcher,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.laser.catcher,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.elevator,distance=..3.5] add 42.tag.portal.temp

tag @e[tag=42.tag.portal.temp,limit=1,sort=nearest] add 42.tag.portal.temp2
tag @e remove 42.tag.portal.temp

execute as @e[tag=42.tag.portal.btn,tag=42.tag.portal.temp2] at @s run function 42:portal/button/cycle
execute as @e[tag=42.tag.portal.vent,tag=42.tag.portal.temp2] at @s run function 42:portal/vent/cycle
execute as @e[tag=42.tag.portal.pellet.emitter,tag=42.tag.portal.temp2] at @s run function 42:portal/pellet/emitter/cycle
execute as @e[tag=42.tag.portal.pellet.catcher,tag=42.tag.portal.temp2] at @s run function 42:portal/pellet/catcher/cycle
execute as @e[tag=42.tag.portal.laser.catcher,tag=42.tag.portal.temp2] at @s run function 42:portal/laser/catcher/cycle
execute as @e[tag=42.tag.portal.elevator,tag=42.tag.portal.temp2] at @s run function 42:portal/elevator/cycle

tag @e remove 42.tag.portal.temp2
kill @s[type=area_effect_cloud]