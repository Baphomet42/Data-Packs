scoreboard players remove @s 42.obj.portal.time 1
tp ^ ^ ^.25
function 42:portal/cube/turret/target/laser_valid
execute if score @s[tag=42.tag.portal.turret.laser_valid] 42.obj.portal.time matches 0.. at @s run function 42:portal/cube/turret/target/laser_move