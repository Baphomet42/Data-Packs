scoreboard players reset @s 42.portal_gun_use
scoreboard players reset @s 42.portal_gun_use2
tag @s remove 42.portal_gun_arg_a
tag @s remove 42.portal_gun_arg_b
execute if entity @s[nbt={SelectedItem:{tag:{portal_type:0b}}}] run tag @s add 42.portal_gun_arg_a
execute if entity @s[nbt={SelectedItem:{tag:{portal_type:1b}}}] run tag @s add 42.portal_gun_arg_b
#
scoreboard players set 42.portal_temp 42.portal_skin 0
execute store result score 42.portal_temp 42.portal_skin run data get entity @s SelectedItem.tag.portal_color
scoreboard players set 42.portal_temp 42.portal_link 0
execute store result score 42.portal_temp 42.portal_link run data get entity @s SelectedItem.tag.portal_id
scoreboard players set 42.portal_temp 42.portal_id -3
execute store result score 42.portal_temp 42.portal_id run data get entity @s UUID[0]
#
execute unless entity @s[tag=!42.portal_gun_arg_a,tag=!42.portal_gun_arg_b] run playsound minecraft:entity.iron_golem.repair block @a ~ ~ ~ 1.25 1.4
execute unless entity @s[tag=!42.portal_gun_arg_a,tag=!42.portal_gun_arg_b] anchored eyes positioned ^ ^ ^ run function 42:portal/gun/use
tag @s remove 42.portal_gun_arg_a
tag @s remove 42.portal_gun_arg_b