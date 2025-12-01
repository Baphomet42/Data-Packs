tag @s remove 42.tag.portal.gun.arg_a
tag @s remove 42.tag.portal.gun.arg_b
execute if items entity @s weapon.mainhand *[custom_data~{42data:{portal:{portal_gun:{pair_type:0}}}}] run tag @s add 42.tag.portal.gun.arg_a
execute if items entity @s weapon.mainhand *[custom_data~{42data:{portal:{portal_gun:{pair_type:1}}}}] run tag @s add 42.tag.portal.gun.arg_b

scoreboard players set #42.var.portal.gun_use_temp 42.obj.portal.skin 0
execute store result score #42.var.portal.gun_use_temp 42.obj.portal.skin run data get entity @s SelectedItem.components.minecraft:custom_data.42data.portal.portal_gun.color
scoreboard players set #42.var.portal.gun_use_temp 42.obj.portal.link 0
execute store result score #42.var.portal.gun_use_temp 42.obj.portal.link run data get entity @s SelectedItem.components.minecraft:custom_data.42data.portal.portal_gun.pair_link
scoreboard players set #42.var.portal.gun_use_temp 42.obj.portal.id -3
execute store result score #42.var.portal.gun_use_temp 42.obj.portal.id run data get entity @s UUID[0]

execute unless entity @s[tag=!42.tag.portal.gun.arg_a,tag=!42.tag.portal.gun.arg_b] run playsound minecraft:entity.iron_golem.repair block @a ~ ~ ~ 1.25 1.4
execute unless entity @s[tag=!42.tag.portal.gun.arg_a,tag=!42.tag.portal.gun.arg_b] anchored eyes positioned ^ ^ ^ run function 42:portal/gun/use
tag @s remove 42.tag.portal.gun.arg_a
tag @s remove 42.tag.portal.gun.arg_b