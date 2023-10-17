scoreboard players reset @s 42.portal_gun_use
tag @e remove 42.portal_gun_arg_a
tag @e remove 42.portal_gun_arg_b
execute if entity @s[nbt={SelectedItem:{tag:{portal_type:0b}}}] run tag @s add 42.portal_gun_arg_a
execute if entity @s[nbt={SelectedItem:{tag:{portal_type:1b}}}] run tag @s add 42.portal_gun_arg_b
execute if entity @s[tag=42.portal_gun_arg_a] run function 42:portal/gun/use
execute if entity @s[tag=42.portal_gun_arg_b] run function 42:portal/gun/use
tag @e remove 42.portal_gun_arg_a
tag @e remove 42.portal_gun_arg_b