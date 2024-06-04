function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ ~ 0
tag @e[tag=42.portal_cube_tp,tag=42.portal_id] remove 42.portal_turret_off
tag @e[tag=42.portal_cube_tp,tag=42.portal_id] remove 42.portal_turret_malfunction
data merge entity @e[tag=42.portal_id,tag=42.portal_turret_eye,limit=1] {block_state:{Name:red_shulker_box}}
tag @e remove 42.portal_id
execute if entity @s[tag=42.portal_turret_oracle] run function 42:portal/cube/turret/setup_oracle