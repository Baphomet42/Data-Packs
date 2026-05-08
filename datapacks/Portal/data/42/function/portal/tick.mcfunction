tag @e remove 42.tag.portal.sel
tag @e remove 42.tag.portal.tick

execute as @e[tag=42.tag.portal.motion] at @s run function 42:portal/generic/motion/motion
execute as @e[tag=42.tag.portal.damage] at @s run function 42:portal/damage

execute as @a[gamemode=!spectator] at @s run function 42:portal/player/tick
execute as @e[tag=42.tag.portal.tags.has_tick,sort=random] at @s run function 42:portal/tick_entity
execute as @e[type=!#42:portal/gel_exempt] unless entity @s[tag=42.tag.tech,tag=!42.tag.portal.cube.main] at @s run function 42:portal/gel/surface/tick_entity
function 42:portal/cube/radio/music

execute as @e[tag=42.tag.portal.cube.dis,tag=42.tag.portal.fizzle] at @s run function 42:portal/cube/fizzle_effect
execute if entity @e[limit=1,tag=42.tag.portal.tool.marker] run function 42:portal/egg

tag @e remove 42.tag.portal.ticked
tag @e remove 42.tag.portal.prox_tick

schedule function 42:portal/tick 1t replace