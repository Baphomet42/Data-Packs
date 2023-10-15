tag @e remove 42.portal_turret_target
tag @e remove 42.portal_turret_target2
tag @e remove 42.portal_turret_current
tag @e remove 42.portal_turret_this
tag @s add 42.portal_turret_this
scoreboard players remove 42.portal_max_turrets 42.portal_id 1
#
tag @a[distance=..42,gamemode=!spectator] add 42.portal_turret_target
tag @e[distance=..42,type=villager] add 42.portal_turret_target
tag @e[tag=42.portal_turret_target] add 42.portal_turret_target2
#
execute store result score @s 42.portal_xrot1 run data get entity @e[tag=42.portal_turret_eye,tag=42.portal_id,limit=1] Rotation[0] 1000
execute store result score @s 42.portal_yrot1 run data get entity @e[tag=42.portal_turret_eye,tag=42.portal_id,limit=1] Rotation[1] 1000
scoreboard players add @s 42.portal_xrot1 720000
scoreboard players add @s 42.portal_yrot1 720000
scoreboard players set @s 42.portal_temp 360000
scoreboard players operation @s 42.portal_xrot1 %= @s 42.portal_temp
scoreboard players operation @s 42.portal_yrot1 %= @s 42.portal_temp
#
scoreboard players set @s 42.portal_z 50
execute if entity @e[tag=42.portal_turret_target] at @s run function 42:portal/cube/turret/target/find_loop
tag @e remove 42.portal_turret_target
tag @e remove 42.portal_turret_target2
tag @e remove 42.portal_turret_target_current
#
execute if entity @e[tag=42.portal_turret_current] at @s run function 42:portal/cube/turret/target/new_laser
tag @e remove 42.portal_turret_current
tag @e remove 42.portal_turret_this