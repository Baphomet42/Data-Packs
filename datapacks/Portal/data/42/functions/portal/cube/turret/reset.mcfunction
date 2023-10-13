function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_turret_eye,limit=1] at @s run function 42:portal/get_rot
execute at @s run function 42:portal/cube/turret/smart_rotate
function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ ~180 0
execute as @e[tag=42.portal_cube_tp,tag=42.portal_id] at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
tag @e[tag=42.portal_cube_tp,tag=42.portal_id] remove 42.portal_turret_off
tag @e[tag=42.portal_cube_tp,tag=42.portal_id] remove 42.portal_turret_malfunction
data merge entity @e[tag=42.portal_id,tag=42.portal_turret_eye,limit=1] {block_state:{Name:red_shulker_box}}
tag @e remove 42.portal_id