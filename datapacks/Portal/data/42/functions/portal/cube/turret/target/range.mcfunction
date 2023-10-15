tag @e remove 42.portal_turret_laser
tag @e remove 42.portal_turret_laser_find
tag @e remove 42.portal_new_spawn
summon marker ~ ~ ~ {Tags:["42.portal_turret_laser","42.portal_new_spawn"]}
summon marker ~ ~ ~ {Tags:["42.portal_turret_laser_find","42.portal_new_spawn"]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
execute as @e[tag=42.portal_turret_target_current,limit=1,sort=nearest] at @s anchored eyes rotated 0 0 positioned ^ ^-.25 ^ run tp @e[tag=42.portal_turret_laser_find] ^ ^ ^
execute at @e[tag=42.portal_turret_eye,tag=42.portal_id] positioned ^ ^1 ^.25 facing entity @e[tag=42.portal_turret_laser_find,limit=1,sort=nearest] feet run tp @e[tag=42.portal_turret_laser] ~ ~ ~ ~ ~
kill @e[tag=42.portal_turret_laser_find]
tag @e remove 42.portal_new_spawn
execute store result score @s 42.portal_xrot2 run data get entity @e[tag=42.portal_turret_laser,limit=1] Rotation[0] 1000
execute store result score @s 42.portal_yrot2 run data get entity @e[tag=42.portal_turret_laser,limit=1] Rotation[1] 1000
#
scoreboard players add @s 42.portal_xrot2 720000
scoreboard players add @s 42.portal_yrot2 720000
scoreboard players operation @s 42.portal_xrot2 %= @s 42.portal_temp
scoreboard players operation @s 42.portal_yrot2 %= @s 42.portal_temp
scoreboard players operation @s 42.portal_xrot2 -= @s 42.portal_xrot1
scoreboard players operation @s 42.portal_yrot2 -= @s 42.portal_yrot1
scoreboard players add @s 42.portal_xrot2 360000
scoreboard players add @s 42.portal_yrot2 360000
tag @e remove 42.portal_temp1
tag @e remove 42.portal_temp2
execute if score @s 42.portal_xrot2 matches -75000..75000 run tag @s add 42.portal_temp1
execute if score @s 42.portal_yrot2 matches -60000..60000 run tag @s add 42.portal_temp2
scoreboard players remove @s 42.portal_xrot2 360000
scoreboard players remove @s 42.portal_yrot2 360000
execute if score @s 42.portal_xrot2 matches -75000..75000 run tag @s add 42.portal_temp1
execute if score @s 42.portal_yrot2 matches -60000..60000 run tag @s add 42.portal_temp2
scoreboard players remove @s 42.portal_xrot2 360000
scoreboard players remove @s 42.portal_yrot2 360000
execute if score @s 42.portal_xrot2 matches -75000..75000 run tag @s add 42.portal_temp1
execute if score @s 42.portal_yrot2 matches -60000..60000 run tag @s add 42.portal_temp2
#
execute if entity @s[tag=42.portal_temp1,tag=42.portal_temp2] at @s run function 42:portal/cube/turret/target/valid
tag @e remove 42.portal_temp1
tag @e remove 42.portal_temp2
kill @e[tag=42.portal_turret_laser]
execute unless entity @e[tag=42.portal_turret_current] at @s run function 42:portal/cube/turret/target/range2