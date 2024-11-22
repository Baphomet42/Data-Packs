function 42:portal/tag_id
execute if entity @e[tag=42.portal_id,tag=42.portal_cube_hit,tag=!42.portal_cube_held] as @e[tag=42.portal_id,tag=42.portal_cube_dis,x_rotation=-30..-0.1] at @s run rotate @s ~ 0
execute if entity @e[tag=42.portal_id,tag=42.portal_cube_hit,tag=!42.portal_cube_held] if entity @e[tag=42.portal_id,tag=42.portal_turret_eye,x_rotation=-90..-30] at @s run function 42:portal/cube/turret/fall
function 42:portal/tag_id

execute if entity @s[tag=42.portal_turret_off,tag=42.portal_turret_malfunction] at @s if score @s 42.portal_w matches 1.. at @s run function 42:portal/cube/turret/mal_tick
execute if entity @s[tag=!42.portal_turret_off] at @s run function 42:portal/cube/turret/on_tick