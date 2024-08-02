tag @e remove 42.portal_temp
summon marker ~ ~ ~ {Tags:["42.portal_gun","42.portal_temp","42.portal_bullet_pass"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}'}
execute if entity @s[tag=42.portal_gun_arg_a] run tag @e[tag=42.portal_temp,limit=1] add 42.portal_gun_a
execute if entity @s[tag=!42.portal_gun_arg_a] run tag @e[tag=42.portal_temp,limit=1] add 42.portal_gun_b

# keep consistent with gun/particle, gun/setup_look, gun/use, portal/particle, portal/set_name, portal/set_color_dis, portal/set_back_color_dis
scoreboard players operation @e[tag=42.portal_temp,limit=1] 42.portal_skin = 42.portal_temp 42.portal_skin
execute as @e[tag=42.portal_temp,limit=1] unless score @s 42.portal_skin matches 0..16 run scoreboard players set @s 42.portal_skin 0

scoreboard players operation @e[tag=42.portal_temp,limit=1] 42.portal_link = 42.portal_temp 42.portal_link
execute as @e[tag=42.portal_temp,limit=1] unless score @s 42.portal_link matches 1.. run scoreboard players set @s 42.portal_link 1

scoreboard players set @e[type=!player,tag=42.portal_temp] 42.datapack 3
tp @e[tag=42.portal_temp] ~ ~ ~ ~ ~
scoreboard players operation @e[type=marker,tag=42.portal_temp,limit=1] 42.portal_id = 42.portal_temp 42.portal_id
execute if entity @s[y_rotation=-45..45] run tag @e[tag=42.portal_temp] add 42.portal_nn
execute unless entity @e[tag=42.portal_temp,tag=42.portal_nn] if entity @s[y_rotation=45..135] run tag @e[tag=42.portal_temp] add 42.portal_ee
execute unless entity @e[tag=42.portal_temp,tag=42.portal_nn] unless entity @e[tag=42.portal_temp,tag=42.portal_ee] if entity @s[y_rotation=135..225] run tag @e[tag=42.portal_temp] add 42.portal_ss
execute unless entity @e[tag=42.portal_temp,tag=42.portal_nn] unless entity @e[tag=42.portal_temp,tag=42.portal_ee] unless entity @e[tag=42.portal_temp,tag=42.portal_ss] if entity @s[y_rotation=225..315] run tag @e[tag=42.portal_temp] add 42.portal_ww
execute if entity @s[tag=42.portal_spawner] run function 42:portal/portal/spawner/rotate_gun
execute if entity @s[tag=42.portal_spawner] run tag @e[tag=42.portal_temp,tag=42.portal_gun] add 42.portal_gun_no_sel
execute if entity @s[tag=42.portal_spawner] run scoreboard players operation @e[tag=42.portal_temp,tag=42.portal_gun] 42.portal_lvl = @s 42.portal_lvl
tag @e remove 42.portal_temp