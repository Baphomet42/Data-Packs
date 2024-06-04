tag @e remove 42.portal_temp
execute positioned ~-1.5 ~.5 ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator] add 42.portal_temp
execute as @a[tag=42.portal_temp] at @e[tag=42.portal_id,tag=42.portal_elevator_start,limit=1] positioned ^ ^ ^2.5 rotated as @s run tp @s ~ ~ ~ ~ ~
effect clear @a[tag=42.portal_temp] levitation
tag @e remove 42.portal_temp