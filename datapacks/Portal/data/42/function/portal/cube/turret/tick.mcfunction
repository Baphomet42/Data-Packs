execute if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s rotated as @p[tag=42.portal_id] run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] as @e[tag=42.portal_id,tag=42.portal_cube_dis,x_rotation=0.1..90] at @s run tp @s ~ ~ ~ ~ 0
execute if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=!42.portal_cube_held] as @e[tag=42.portal_id,tag=42.portal_cube_dis,x_rotation=-30..-0.1] at @s run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=!42.portal_turret_off,tag=!42.portal_turret_malfunction] if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=!42.portal_cube_held] if entity @e[tag=42.portal_id,tag=42.portal_turret_eye,x_rotation=-90..-30] at @s run function 42:portal/cube/turret/malfunction
function 42:portal/tag_id

execute as @e[tag=42.portal_id,tag=42.portal_cube_hit] run data merge entity @s {width:1.01,height:1.505}
execute if entity @e[tag=42.portal_id,tag=42.portal_cube_dis,x_rotation=-90..-30] as @e[tag=42.portal_id,tag=42.portal_cube_hit] run data merge entity @s {width:1.5,height:1.005}

execute if entity @s[tag=42.portal_turret_off] at @s run function 42:portal/cube/turret/off_tick
execute if entity @s[tag=!42.portal_turret_off] at @s run function 42:portal/cube/turret/on_tick