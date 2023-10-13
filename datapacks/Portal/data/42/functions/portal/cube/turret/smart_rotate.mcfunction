function 42:portal/tag_id
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_nn] at @s run tp @e[tag=42.portal_id,tag=42.portal_cube_dis] ~ ~ ~ 0 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_ne] at @s run tp @e[tag=42.portal_id,tag=42.portal_cube_dis] ~ ~ ~ 45 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_ee] at @s run tp @e[tag=42.portal_id,tag=42.portal_cube_dis] ~ ~ ~ 90 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_se] at @s run tp @e[tag=42.portal_id,tag=42.portal_cube_dis] ~ ~ ~ 135 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_ss] at @s run tp @e[tag=42.portal_id,tag=42.portal_cube_dis] ~ ~ ~ 180 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_sw] at @s run tp @e[tag=42.portal_id,tag=42.portal_cube_dis] ~ ~ ~ -135 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_ww] at @s run tp @e[tag=42.portal_id,tag=42.portal_cube_dis] ~ ~ ~ -90 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_nw] at @s run tp @e[tag=42.portal_id,tag=42.portal_cube_dis] ~ ~ ~ -45 ~
function 42:portal/get_rot2
tag @e remove 42.portal_id