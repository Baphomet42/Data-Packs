tag @e remove 42.tag.portal.sel
tag @e remove 42.tag.portal.tick

execute as @e[tag=42.tag.portal.motion.tp] at @s run function 42:portal/motion
execute as @e[tag=42.tag.portal.damage] at @s run function 42:portal/damage

execute as @a[gamemode=!spectator] at @s run function 42:portal/player/tick
execute as @e[tag=42.tag.portal.tags.has_tick,sort=random] at @s run function 42:portal/tick_entity
function 42:portal/cube/radio/music

execute as @e[tag=42.tag.portal.cube.dis,tag=42.tag.portal.fizzle] at @s run function 42:portal/cube/fizzle_effect
execute if entity @e[limit=1,type=area_effect_cloud,tag=42.tag.portal.tool.marker] run function 42:portal/egg

tag @e remove 42.tag.portal.ticked
tag @e remove 42.tag.portal.prox_tick

schedule function 42:portal/tick 1t replace