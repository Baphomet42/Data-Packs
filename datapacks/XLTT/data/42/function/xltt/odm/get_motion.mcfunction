function 42:xltt/tag_id
tag @s add 42.tag.xltt.odm.motion
execute store result score @s 42.obj.xltt.odm_x run data get entity @s Pos[0] 1000
execute store result score @s 42.obj.xltt.odm_y run data get entity @s Pos[1] 1000
execute store result score @s 42.obj.xltt.odm_z run data get entity @s Pos[2] 1000
execute at @s facing entity @e[tag=42.tag.xltt.id,tag=42.tag.xltt.odm.hit,limit=1,sort=nearest] feet run tp @s ^ ^ ^.014
summon armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Silent:true,Small:true,Tags:["42.tag.summon","42.tag.xltt.odm.marker","42.tag.xltt.odm.new"],DisabledSlots:16191}
scoreboard players operation @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new] 42.obj.xltt.id = @s 42.obj.xltt.id
execute store result score @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new] 42.obj.xltt.odm_x run data get entity @s Pos[0] 1000
execute store result score @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new] 42.obj.xltt.odm_y run data get entity @s Pos[1] 1000
execute store result score @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new] 42.obj.xltt.odm_z run data get entity @s Pos[2] 1000
execute store result entity @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new,limit=1] Motion[0] double .1 run scoreboard players operation @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new] 42.obj.xltt.odm_x -= @s 42.obj.xltt.odm_x
execute store result entity @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new,limit=1] Motion[1] double .1 run scoreboard players operation @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new] 42.obj.xltt.odm_y -= @s 42.obj.xltt.odm_y
execute store result entity @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new,limit=1] Motion[2] double .1 run scoreboard players operation @e[tag=42.tag.xltt.odm.marker,tag=42.tag.xltt.odm.new] 42.obj.xltt.odm_z -= @s 42.obj.xltt.odm_z
tag @e remove 42.tag.xltt.odm.new
tag @e remove 42.tag.xltt.id