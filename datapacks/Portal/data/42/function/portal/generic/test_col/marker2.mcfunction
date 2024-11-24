execute store result score @s 42.obj.portal.var.x run data get entity @s Pos[0] 160
execute store result score @s 42.obj.portal.var.z run data get entity @s Pos[2] 160
scoreboard players operation @s 42.obj.portal.var.x %= @s 42.obj.portal.var.w
scoreboard players operation @s 42.obj.portal.var.z %= @s 42.obj.portal.var.w

execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #stairs[half=bottom,shape=straight,facing=west] if score @s 42.obj.portal.var.y matches 80.. if score @s 42.obj.portal.var.x matches 80.. run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #stairs[half=bottom,shape=straight,facing=north] if score @s 42.obj.portal.var.y matches 80.. if score @s 42.obj.portal.var.z matches 80.. run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #stairs[half=bottom,shape=straight,facing=east] if score @s 42.obj.portal.var.y matches 80.. if score @s 42.obj.portal.var.x matches ..80 run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #stairs[half=bottom,shape=straight,facing=south] if score @s 42.obj.portal.var.y matches 80.. if score @s 42.obj.portal.var.z matches ..80 run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #stairs[half=top,shape=straight,facing=west] if score @s 42.obj.portal.var.y matches ..80 if score @s 42.obj.portal.var.x matches 80.. run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #stairs[half=top,shape=straight,facing=north] if score @s 42.obj.portal.var.y matches ..80 if score @s 42.obj.portal.var.z matches 80.. run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #stairs[half=top,shape=straight,facing=east] if score @s 42.obj.portal.var.y matches ..80 if score @s 42.obj.portal.var.x matches ..80 run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #stairs[half=top,shape=straight,facing=south] if score @s 42.obj.portal.var.y matches ..80 if score @s 42.obj.portal.var.z matches ..80 run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #trapdoors[open=true,facing=west] if score @s 42.obj.portal.var.x matches ..130 run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #trapdoors[open=true,facing=north] if score @s 42.obj.portal.var.z matches ..130 run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #trapdoors[open=true,facing=east] if score @s 42.obj.portal.var.x matches 30.. run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #trapdoors[open=true,facing=south] if score @s 42.obj.portal.var.z matches 30.. run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ skeleton_wall_skull[facing=west] if score @s 42.obj.portal.var.x matches ..80 run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ skeleton_wall_skull[facing=north] if score @s 42.obj.portal.var.z matches ..80 run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ skeleton_wall_skull[facing=east] if score @s 42.obj.portal.var.x matches 80.. run return run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ skeleton_wall_skull[facing=south] if score @s 42.obj.portal.var.z matches 80.. run return run tag @s add 42.tag.portal.test.valid