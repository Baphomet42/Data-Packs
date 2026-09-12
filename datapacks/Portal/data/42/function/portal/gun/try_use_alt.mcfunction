execute if score @s 42.obj.portal.gun_cooldown matches 1.. run return fail
scoreboard players set @s 42.obj.portal.gun_cooldown 8

tag @s remove 42.tag.portal.gun.arg_a
tag @s add 42.tag.portal.gun.arg_b

data modify storage 42:portal temp set from entity @s
execute unless data storage 42:portal temp.SelectedItem.components.minecraft:custom_data.42data.portal.portal_gun.alt run return run data remove storage 42:portal temp
scoreboard players set #42.var.portal.gun_use_temp 42.obj.portal.skin 0
execute store result score #42.var.portal.gun_use_temp 42.obj.portal.skin run data get storage 42:portal temp.SelectedItem.components.minecraft:custom_data.42data.portal.portal_gun.alt.color
scoreboard players set #42.var.portal.gun_use_temp 42.obj.portal.link 0
execute store result score #42.var.portal.gun_use_temp 42.obj.portal.link run data get storage 42:portal temp.SelectedItem.components.minecraft:custom_data.42data.portal.portal_gun.link
scoreboard players set #42.var.portal.gun_use_temp 42.obj.portal.id -3
execute store result score #42.var.portal.gun_use_temp 42.obj.portal.id run data get storage 42:portal temp.UUID[0]
data remove storage 42:portal temp

playsound minecraft:entity.iron_golem.repair block @a ~ ~ ~ 1.25 1.4
function 42:portal/gun/set_light_alt
execute anchored eyes positioned ^ ^ ^ run function 42:portal/gun/use
tag @s remove 42.tag.portal.gun.arg_b