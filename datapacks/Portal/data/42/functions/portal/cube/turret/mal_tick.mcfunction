execute if score @s 42.portal_w matches 48.. run particle flash
execute if score @s 42.portal_w matches 28..30 run particle flash
execute if score @s 42.portal_w matches 37 run particle flash
execute if score @s 42.portal_w matches 16..20 run particle flash
execute if score @s 42.portal_w matches 1..3 run particle flash
execute if score @s 42.portal_w matches 1.. as @e[tag=42.portal_id,tag=42.portal_turret_eye] at @s run function 42:portal/cube/turret/target/shoot
#
execute if score @s 42.portal_w matches 1 run function 42:portal/cube/turret/deactivate
scoreboard players remove @s 42.portal_w 1