execute if score @s 42.portal_w matches 88.. run particle flash
execute if score @s 42.portal_w matches 68..70 run particle flash
execute if score @s 42.portal_w matches 77 run particle flash
execute if score @s 42.portal_w matches 56..60 run particle flash
execute if score @s 42.portal_w matches 41..43 run particle flash
execute if score @s 42.portal_w matches 41.. as @e[tag=42.portal_id,tag=42.portal_turret_eye] at @s run function 42:portal/cube/turret/target/shoot
#
execute if score @s 42.portal_w matches 1 run function 42:portal/cube/turret/deactivate
scoreboard players remove @s 42.portal_w 1