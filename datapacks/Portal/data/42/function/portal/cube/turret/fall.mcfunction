function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run rotate @s ~ -70
execute as @e[tag=42.portal_id,tag=42.portal_cube_hit] run data merge entity @s {width:1.5,height:1.01}
execute if entity @s[tag=!42.portal_turret_off,tag=!42.portal_turret_malfunction] if entity @e[tag=42.portal_id,tag=42.portal_cube_hit,tag=!42.portal_cube_held] at @s run function 42:portal/cube/turret/malfunction
tag @e remove 42.portal_id