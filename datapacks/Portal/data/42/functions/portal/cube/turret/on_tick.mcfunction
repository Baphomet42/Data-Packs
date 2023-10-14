scoreboard players add @s 42.portal_u 1
execute if score @s 42.portal_u matches 15.. run scoreboard players set @s 42.portal_u 0
execute if score @s[tag=!42.portal_turret_nofind] 42.portal_u matches 2 if score 42.portal_max_turrets 42.portal_id matches 1.. run function 42:portal/cube/turret/target/find
function 42:portal/tag_id
execute if score @s 42.portal_v matches 1.. run scoreboard players remove @s 42.portal_v 1
execute if score @s[tag=42.portal_turret_open] 42.portal_v matches 1 run function 42:portal/cube/turret/arms/close
execute if entity @e[tag=42.portal_id,tag=42.portal_turret_fire,tag=!42.portal_turret_fire_noshoot] as @e[tag=42.portal_id,tag=42.portal_turret_eye] at @s run function 42:portal/cube/turret/target/shoot
#
execute if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] if score @s 42.portal_v matches ..80 run scoreboard players set @s 42.portal_v 80
execute if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] if entity @s[tag=!42.portal_turret_open] run function 42:portal/cube/turret/arms/open