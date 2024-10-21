function 42:portal/tag_id
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_nn] at @s as @e[tag=42.portal_id,tag=42.portal_cube_dis] run rotate @s 180 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_ne] at @s as @e[tag=42.portal_id,tag=42.portal_cube_dis] run rotate @s -135 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_ee] at @s as @e[tag=42.portal_id,tag=42.portal_cube_dis] run rotate @s -90 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_se] at @s as @e[tag=42.portal_id,tag=42.portal_cube_dis] run rotate @s -45 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_ss] at @s as @e[tag=42.portal_id,tag=42.portal_cube_dis] run rotate @s 0 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_sw] at @s as @e[tag=42.portal_id,tag=42.portal_cube_dis] run rotate @s 45 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_ww] at @s as @e[tag=42.portal_id,tag=42.portal_cube_dis] run rotate @s 90 ~
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_nw] at @s as @e[tag=42.portal_id,tag=42.portal_cube_dis] run rotate @s 135 ~
function 42:portal/get_rot2
tag @e remove 42.portal_id