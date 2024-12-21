tag @e remove 42.tag.portal.turret.laser
tag @e remove 42.tag.portal.turret.laser_find
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.turret.laser","42.tag.portal.bullet_pass"]}
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.turret.laser_find"]}
execute as @e[tag=42.tag.portal.turret.target_current,limit=1,sort=nearest] at @s anchored feet rotated 0 0 positioned ^ ^.25 ^ run tp @e[tag=42.tag.portal.turret.laser_find] ^ ^ ^
execute at @e[tag=42.tag.portal.turret.eye,tag=42.tag.portal.id] positioned ^ ^1 ^.25 facing entity @e[tag=42.tag.portal.turret.laser_find,limit=1,sort=nearest] feet run tp @e[tag=42.tag.portal.turret.laser] ~ ~ ~ ~ ~
kill @e[tag=42.tag.portal.turret.laser_find]
execute store result score @s 42.obj.portal.xrot2 run data get entity @e[tag=42.tag.portal.turret.laser,limit=1] Rotation[0] 1000
execute store result score @s 42.obj.portal.yrot2 run data get entity @e[tag=42.tag.portal.turret.laser,limit=1] Rotation[1] 1000

scoreboard players add @s 42.obj.portal.xrot2 720000
scoreboard players add @s 42.obj.portal.yrot2 720000
scoreboard players operation @s 42.obj.portal.xrot2 %= @s 42.obj.portal.temp
scoreboard players operation @s 42.obj.portal.yrot2 %= @s 42.obj.portal.temp
scoreboard players operation @s 42.obj.portal.xrot2 -= @s 42.obj.portal.xrot1
scoreboard players operation @s 42.obj.portal.yrot2 -= @s 42.obj.portal.yrot1
scoreboard players add @s 42.obj.portal.xrot2 360000
scoreboard players add @s 42.obj.portal.yrot2 360000
tag @e remove 42.tag.portal.temp1
tag @e remove 42.tag.portal.temp2
execute if score @s 42.obj.portal.xrot2 matches -75000..75000 run tag @s add 42.tag.portal.temp1
execute if score @s 42.obj.portal.yrot2 matches -60000..60000 run tag @s add 42.tag.portal.temp2
scoreboard players remove @s 42.obj.portal.xrot2 360000
scoreboard players remove @s 42.obj.portal.yrot2 360000
execute if score @s 42.obj.portal.xrot2 matches -75000..75000 run tag @s add 42.tag.portal.temp1
execute if score @s 42.obj.portal.yrot2 matches -60000..60000 run tag @s add 42.tag.portal.temp2
scoreboard players remove @s 42.obj.portal.xrot2 360000
scoreboard players remove @s 42.obj.portal.yrot2 360000
execute if score @s 42.obj.portal.xrot2 matches -75000..75000 run tag @s add 42.tag.portal.temp1
execute if score @s 42.obj.portal.yrot2 matches -60000..60000 run tag @s add 42.tag.portal.temp2

execute if entity @s[tag=42.tag.portal.temp1,tag=42.tag.portal.temp2] at @s run function 42:portal/cube/turret/target/valid
tag @e remove 42.tag.portal.temp1
tag @e remove 42.tag.portal.temp2
kill @e[tag=42.tag.portal.turret.laser,limit=1]