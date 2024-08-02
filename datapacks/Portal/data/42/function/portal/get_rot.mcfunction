function 42:portal/get_rot2

tag @s add 42.portal_rot

execute if entity @s[y_rotation=-135..-45] run tag @s add 42.portal_rot_e
execute if entity @s[y_rotation=-45..45,tag=!42.portal_rot_e] run tag @s add 42.portal_rot_s
execute if entity @s[y_rotation=45..135,tag=!42.portal_rot_s] run tag @s add 42.portal_rot_w
execute if entity @s[y_rotation=135..225,tag=!42.portal_rot_w] run tag @s add 42.portal_rot_n
tag @s[tag=42.portal_rot_n] remove 42.portal_rot_e

execute if entity @s[y_rotation=157.5..202.5] run tag @s add 42.portal_rot_nn
execute if entity @s[y_rotation=-157.5..-112.5,tag=!42.portal_rot_nn] run tag @s add 42.portal_rot_ne
execute if entity @s[y_rotation=-112.5..-67.5,tag=!42.portal_rot_ne] run tag @s add 42.portal_rot_ee
execute if entity @s[y_rotation=-67.5..-22.5,tag=!42.portal_rot_ee] run tag @s add 42.portal_rot_se
execute if entity @s[y_rotation=-22.5..22.5,tag=!42.portal_rot_se] run tag @s add 42.portal_rot_ss
execute if entity @s[y_rotation=22.5..67.5,tag=!42.portal_rot_ss] run tag @s add 42.portal_rot_sw
execute if entity @s[y_rotation=67.5..112.5,tag=!42.portal_rot_sw] run tag @s add 42.portal_rot_ww
execute if entity @s[y_rotation=112.5..157.5,tag=!42.portal_rot_ww] run tag @s add 42.portal_rot_nw
tag @s[tag=42.portal_rot_nw] remove 42.portal_rot_nn

execute if entity @s[x_rotation=-45..45] run tag @s add 42.portal_rot_mid
execute if entity @s[x_rotation=-90..-45,tag=!42.portal_rot_mid] run tag @s add 42.portal_rot_up
execute if entity @s[x_rotation=45..90,tag=!42.portal_rot_mid] run tag @s add 42.portal_rot_down