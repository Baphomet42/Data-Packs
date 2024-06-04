scoreboard players add @s[tag=42.portal_dropper] 42.portal_x 1
execute unless score @s 42.portal_x matches 1..4 run scoreboard players set @s 42.portal_x 1
tag @s remove 42.portal_spawn_cube1
tag @s remove 42.portal_spawn_cube2
tag @s remove 42.portal_spawn_cube3
tag @s remove 42.portal_spawn_cube1old
execute if score @s 42.portal_x matches 1 run tag @s add 42.portal_spawn_cube1
execute if score @s 42.portal_x matches 2 run tag @s add 42.portal_spawn_cube2
execute if score @s 42.portal_x matches 3 run tag @s add 42.portal_spawn_cube3
execute if score @s 42.portal_x matches 4 run tag @s add 42.portal_spawn_cube1
execute if score @s 42.portal_x matches 4 run tag @s add 42.portal_spawn_cube1old
function 42:portal/dropper/fizzle_cube