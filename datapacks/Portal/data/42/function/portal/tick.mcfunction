execute as @e[tag=42.tag.portal.motion] at @s run function 42:portal/generic/motion/motion
scoreboard players remove @e[scores={42.obj.portal.damage=1..}] 42.obj.portal.damage 1

execute as @a[gamemode=!spectator] at @s run function 42:portal/player/tick
execute as @e[tag=42.tag.portal.tags.has_tick,sort=random] at @s run function 42:portal/tick_entity
execute as @e[type=!#42:portal/gel_exempt] unless entity @s[tag=42.tag.tech,tag=!42.tag.portal.cube.main] at @s run function 42:portal/gel/surface/tick_entity
function 42:portal/cube/radio/music

schedule function 42:portal/tick 1t replace