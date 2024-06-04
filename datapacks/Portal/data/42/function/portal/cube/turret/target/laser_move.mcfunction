scoreboard players remove @s 42.portal_time 1
execute at @s run function 42:portal/generic/entity_col/test_1p
execute at @s run tag @e[tag=42.portal_turret_target,limit=1,sort=nearest,scores={42.portal_col=2}] add 42.portal_turret_current
execute if entity @e[tag=42.portal_turret_current] at @s as @e[tag=42.portal_turret_this,limit=1,sort=nearest] run function 42:portal/cube/turret/target/new
tp ^ ^ ^.25
function 42:portal/cube/turret/target/laser_valid
execute if score @s[tag=42.portal_turret_laser_valid] 42.portal_time matches 0.. at @s unless entity @e[tag=42.portal_turret_current] run function 42:portal/cube/turret/target/laser_move