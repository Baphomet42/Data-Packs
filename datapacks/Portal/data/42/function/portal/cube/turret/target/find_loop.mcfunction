scoreboard players remove @s 42.obj.portal.var.z 1
tag @e remove 42.tag.portal.turret.target_current
tag @e[tag=42.tag.portal.turret.target,sort=nearest,limit=1] add 42.tag.portal.turret.target_current
function 42:portal/cube/turret/target/range
tag @e[tag=42.tag.portal.turret.target_current] remove 42.tag.portal.turret.target
execute unless entity @e[tag=42.tag.portal.turret.current] if entity @e[tag=42.tag.portal.turret.target] if score @s 42.obj.portal.var.z matches 1.. run function 42:portal/cube/turret/target/find_loop