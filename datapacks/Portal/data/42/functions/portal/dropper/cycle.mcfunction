scoreboard players add @s[tag=42.portal_dropper] 42.portal_x 1
scoreboard players set @s[tag=42.portal_dropper,scores={42.portal_x=5..}] 42.portal_x 1
tag @s remove 42.portal_spawn_cube1
tag @s remove 42.portal_spawn_cube2
tag @s remove 42.portal_spawn_cube3
tag @s remove 42.portal_spawn_cube1old
execute if score @s 42.portal_x matches 1 run tag @s add 42.portal_spawn_cube1
execute if score @s 42.portal_x matches 2 run tag @s add 42.portal_spawn_cube2
execute if score @s 42.portal_x matches 3 run tag @s add 42.portal_spawn_cube3
execute if score @s 42.portal_x matches 4 run tag @s add 42.portal_spawn_cube1
execute if score @s 42.portal_x matches 4 run tag @s add 42.portal_spawn_cube1old
particle flash
execute positioned ~ ~-1.5 ~ run function 42:portal/tools/notif
execute if score @s 42.portal_x matches 1 run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Vent Drop Type: Storage Cube"}'}
execute if score @s 42.portal_x matches 2 run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Vent Drop Type: Companion Cube"}'}
execute if score @s 42.portal_x matches 3 run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Vent Drop Type: Redirection Cube"}'}
execute if score @s 42.portal_x matches 4 run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Vent Drop Type: Old Storage Cube"}'}