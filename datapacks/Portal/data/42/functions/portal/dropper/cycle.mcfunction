scoreboard players add @s[tag=42.portal_dropper] 42.portal_x 1
scoreboard players set @s[tag=42.portal_dropper,scores={42.portal_x=4..}] 42.portal_x 1
tag @s remove 42.portal_spawn_cube2
tag @s remove 42.portal_spawn_cube3
execute if score @s 42.portal_x matches 2 run tag @s add 42.portal_spawn_cube2
execute if score @s 42.portal_x matches 3 run tag @s add 42.portal_spawn_cube3
particle flash