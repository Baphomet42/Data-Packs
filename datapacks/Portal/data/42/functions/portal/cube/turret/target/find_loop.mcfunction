scoreboard players remove @s 42.portal_z 1
tag @e remove 42.portal_turret_target_current
tag @e[tag=42.portal_turret_target,sort=nearest,limit=1] add 42.portal_turret_target_current
function 42:portal/cube/turret/target/range
tag @e[tag=42.portal_turret_target_current] remove 42.portal_turret_target
execute unless entity @e[tag=42.portal_turret_current] if entity @e[tag=42.portal_turret_target] if score @s 42.portal_z matches 1.. run function 42:portal/cube/turret/target/find_loop