function 42:xltt/tag_id
tag @s add 42.odm_motion
execute store result score @s 42.odm_x run data get entity @s Pos[0] 1000
execute store result score @s 42.odm_y run data get entity @s Pos[1] 1000
execute store result score @s 42.odm_z run data get entity @s Pos[2] 1000
execute at @s facing entity @e[tag=42.xltt_id,tag=42.odm_hit,limit=1,sort=nearest] feet run tp @s ^ ^ ^.014
summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Silent:1,Small:1,Tags:["42.odm_marker","42.odm_new"],DisabledSlots:16191}
scoreboard players operation @e[tag=42.odm_marker,tag=42.odm_new] 42.xltt_id = @s 42.xltt_id
execute store result score @e[tag=42.odm_marker,tag=42.odm_new] 42.odm_x run data get entity @s Pos[0] 1000
execute store result score @e[tag=42.odm_marker,tag=42.odm_new] 42.odm_y run data get entity @s Pos[1] 1000
execute store result score @e[tag=42.odm_marker,tag=42.odm_new] 42.odm_z run data get entity @s Pos[2] 1000
execute store result entity @e[tag=42.odm_marker,tag=42.odm_new,limit=1] Motion[0] double .1 run scoreboard players operation @e[tag=42.odm_marker,tag=42.odm_new] 42.odm_x -= @s 42.odm_x
execute store result entity @e[tag=42.odm_marker,tag=42.odm_new,limit=1] Motion[1] double .1 run scoreboard players operation @e[tag=42.odm_marker,tag=42.odm_new] 42.odm_y -= @s 42.odm_y
execute store result entity @e[tag=42.odm_marker,tag=42.odm_new,limit=1] Motion[2] double .1 run scoreboard players operation @e[tag=42.odm_marker,tag=42.odm_new] 42.odm_z -= @s 42.odm_z
tag @e remove 42.odm_new
tag @e remove 42.xltt_id