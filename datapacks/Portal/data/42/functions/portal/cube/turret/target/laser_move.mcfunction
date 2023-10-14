scoreboard players remove @s 42.portal_time 1
execute at @s run tag @e[tag=42.portal_turret_target,distance=...75,limit=1,sort=nearest] add 42.portal_turret_current
execute at @s unless entity @e[tag=42.portal_turret_current] positioned ~ ~-1.5 ~ run tag @e[tag=42.portal_turret_target_current,distance=...75,limit=1,sort=nearest] add 42.portal_turret_current
execute if entity @e[tag=42.portal_turret_current] at @s as @e[tag=42.portal_turret_this,limit=1,sort=nearest] run function 42:portal/cube/turret/target/new
execute at @s if block ~ ~ ~ #42:portal_cube_pass run tp ^ ^ ^.25
execute if score @s 42.portal_time matches 0.. at @s if block ~ ~ ~ #42:portal_cube_pass unless entity @e[tag=42.portal_turret_current] run function 42:portal/cube/turret/target/laser_move