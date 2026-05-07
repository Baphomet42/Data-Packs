# function to kick players out of elevator and tp back to start if elevator was reset while moving (shouldn't happen in normal play)

tag @e remove 42.tag.portal.temp
execute positioned ~-1.5 ~.5 ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator] add 42.tag.portal.temp
execute as @a[tag=42.tag.portal.temp] at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main,limit=1] positioned ^ ^.5 ^1 rotated as @s run tp @s ~ ~ ~ ~ ~
effect clear @a[tag=42.tag.portal.temp] levitation
tag @e remove 42.tag.portal.temp