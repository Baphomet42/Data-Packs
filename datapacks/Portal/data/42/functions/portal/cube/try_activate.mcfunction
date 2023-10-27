execute if entity @s[tag=42.portal_cube1] as @e[tag=42.portal_id,tag=42.portal_cube_color] run data modify entity @s block_state.Name set value light_blue_concrete_powder
execute if entity @s[tag=42.portal_cube2] as @e[tag=42.portal_id,tag=42.portal_cube_color] run data modify entity @s block_state.Name set value pink_concrete_powder
tag @s remove 42.portal_temp
execute at @e[tag=42.portal_btn,distance=..5] positioned ~-.5 ~-.625 ~-.5 run tag @s[dx=0,dy=0,dz=0] add 42.portal_temp
execute if entity @s[tag=42.portal_temp] as @e[tag=42.portal_id,tag=42.portal_cube_color] run data modify entity @s block_state.Name set value yellow_concrete_powder
tag @s remove 42.portal_temp