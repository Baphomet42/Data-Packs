tag @s remove 42.tag.portal.test.valid
execute store result score @s 42.obj.portal.var.y run data get entity @s Pos[1] 160
scoreboard players set @s 42.obj.portal.var.w 160
scoreboard players operation @s 42.obj.portal.var.y %= @s 42.obj.portal.var.w

execute if block ~ ~ ~ #slabs[type=bottom] if score @s 42.obj.portal.var.y matches 80.. run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #slabs[type=top] if score @s 42.obj.portal.var.y matches ..80 run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #trapdoors[half=bottom,open=false] if score @s 42.obj.portal.var.y matches 30.. run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] if block ~ ~ ~ #trapdoors[half=top,open=false] if score @s 42.obj.portal.var.y matches ..130 run tag @s add 42.tag.portal.test.valid
execute unless entity @s[tag=42.tag.portal.test.valid] run function 42:portal/generic/test_col/marker2

execute if entity @s[tag=42.tag.portal.test.valid] run scoreboard players add @e[tag=42.tag.portal.test.this] 42.obj.portal.col 1
tag @s remove 42.tag.portal.test.valid