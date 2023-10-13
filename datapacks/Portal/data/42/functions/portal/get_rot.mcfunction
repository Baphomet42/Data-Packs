tag @e remove 42.portal_rot
tag @e remove 42.portal_rot_n
tag @e remove 42.portal_rot_s
tag @e remove 42.portal_rot_e
tag @e remove 42.portal_rot_w
#
tag @s add 42.portal_rot
execute if entity @s[y_rotation=-135..-45] run tag @s add 42.portal_rot_e
execute if entity @s[y_rotation=-45..45] run tag @s add 42.portal_rot_s
execute if entity @s[y_rotation=45..135] run tag @s add 42.portal_rot_w
execute if entity @s[y_rotation=135..225] run tag @s add 42.portal_rot_n