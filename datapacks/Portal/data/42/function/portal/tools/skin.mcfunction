tag @e remove 42.tag.portal.temp
tag @e remove 42.tag.portal.temp2

tag @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.cube.storage,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.turret,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.vent,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.wire,distance=..1.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.portal.spawner,distance=..2.5] add 42.tag.portal.temp

tag @e[tag=42.tag.portal.temp,limit=1,sort=nearest] add 42.tag.portal.temp2
tag @e remove 42.tag.portal.temp

execute as @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.temp2] at @s run function 42:portal/cube/skin
execute as @e[tag=42.tag.portal.vent,tag=42.tag.portal.temp2] at @s run function 42:portal/vent/skin
execute as @e[tag=42.tag.portal.wire,tag=42.tag.portal.temp2] at @s run function 42:portal/wire/skin
execute as @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.temp2] at @s run function 42:portal/portal/spawner/skin_portal

tag @e remove 42.tag.portal.temp2
kill @s[type=area_effect_cloud]