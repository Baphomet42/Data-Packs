execute store result score @s 42.portal_x run data get entity @s Pos[0] 160
execute store result score @s 42.portal_z run data get entity @s Pos[2] 160
scoreboard players operation @s 42.portal_x %= @s 42.portal_w
scoreboard players operation @s 42.portal_z %= @s 42.portal_w
#
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #stairs[half=bottom,shape=straight,facing=west] if score @s 42.portal_y matches 80.. if score @s 42.portal_x matches 80.. run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #stairs[half=bottom,shape=straight,facing=north] if score @s 42.portal_y matches 80.. if score @s 42.portal_z matches 80.. run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #stairs[half=bottom,shape=straight,facing=east] if score @s 42.portal_y matches 80.. if score @s 42.portal_x matches ..80 run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #stairs[half=bottom,shape=straight,facing=south] if score @s 42.portal_y matches 80.. if score @s 42.portal_z matches ..80 run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #stairs[half=top,shape=straight,facing=west] if score @s 42.portal_y matches ..80 if score @s 42.portal_x matches 80.. run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #stairs[half=top,shape=straight,facing=north] if score @s 42.portal_y matches ..80 if score @s 42.portal_z matches 80.. run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #stairs[half=top,shape=straight,facing=east] if score @s 42.portal_y matches ..80 if score @s 42.portal_x matches ..80 run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #stairs[half=top,shape=straight,facing=south] if score @s 42.portal_y matches ..80 if score @s 42.portal_z matches ..80 run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #trapdoors[open=true,facing=west] if score @s 42.portal_x matches ..130 run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #trapdoors[open=true,facing=north] if score @s 42.portal_z matches ..130 run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #trapdoors[open=true,facing=east] if score @s 42.portal_x matches 30.. run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ #trapdoors[open=true,facing=south] if score @s 42.portal_z matches 30.. run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ skeleton_wall_skull[facing=west] if score @s 42.portal_x matches ..80 run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ skeleton_wall_skull[facing=north] if score @s 42.portal_z matches ..80 run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ skeleton_wall_skull[facing=east] if score @s 42.portal_x matches 80.. run tag @s add 42.portal_test_valid
execute unless entity @s[tag=42.portal_test_valid] if block ~ ~ ~ skeleton_wall_skull[facing=south] if score @s 42.portal_z matches 80.. run tag @s add 42.portal_test_valid