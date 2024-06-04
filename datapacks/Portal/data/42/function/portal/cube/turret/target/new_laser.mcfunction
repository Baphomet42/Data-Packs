function 42:portal/tag_id
tag @e remove 42.portal_turret_laser
summon marker ~ ~ ~ {Tags:["42.portal_turret_laser","42.portal_turret_laser_dis","42.portal_bullet_pass"]}
scoreboard players set @e[type=!player,tag=42.portal_turret_laser] 42.datapack 3
execute at @e[tag=42.portal_turret_eye,tag=42.portal_id] positioned ^ ^1 ^.25 facing entity @e[tag=42.portal_id,tag=42.portal_turret_fire] feet run tp @e[tag=42.portal_turret_laser] ~ ~ ~ ~ ~
scoreboard players set @e[tag=42.portal_turret_laser] 42.portal_time 200
execute as @e[tag=42.portal_turret_laser] at @s run function 42:portal/cube/turret/target/laser_move_dis
kill @e[tag=42.portal_turret_laser]
#
tag @e remove 42.portal_id